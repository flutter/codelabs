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
    # TODO: add code to chain the retrieval and ranking model, and return the
    #       ranked list of movies

    return None


if __name__ == "__main__":
    app.run(debug=True)
