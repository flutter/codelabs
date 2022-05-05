from flask import Flask
from flask_cors import CORS
from flask import jsonify, make_response, request
import json, requests
import numpy as np

RETRIEVAL_URL = "http://localhost:8501/v1/models/retrieval:predict"
RANKING_URL = "http://localhost:8501/v1/models/ranking:predict"
NUM_OF_CANDIDATES = 10

app = Flask(__name__)
CORS(app)


@app.route("/recommend", methods=["POST"])
def get_recommendations():
    user_id = request.get_json()["user_id"]
    retrieval_request = json.dumps({"instances": [user_id]})
    retrieval_response = requests.post(RETRIEVAL_URL, data=retrieval_request)
    movie_candidates = retrieval_response.json()["predictions"][0]["output_2"]

    ranking_queries = [
        {"user_id": u, "movie_title": m}
        for (u, m) in zip([user_id] * NUM_OF_CANDIDATES, movie_candidates)
    ]
    ranking_request = json.dumps({"instances": ranking_queries})
    ranking_response = requests.post(RANKING_URL, data=ranking_request)
    movies_scores = list(np.squeeze(ranking_response.json()["predictions"]))
    ranked_movies = [
        m[1] for m in sorted(list(zip(movies_scores, movie_candidates)), reverse=True)
    ]

    return make_response(jsonify({"movies": ranked_movies}), 200)


if __name__ == "__main__":
    app.run(debug=True)
