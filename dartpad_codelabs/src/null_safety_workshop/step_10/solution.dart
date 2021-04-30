class Meal {
  late String description;

  void setDescription(String str) {
    description = str;
  }
}

void main() {
  final myMeal = Meal();
  myMeal.setDescription('Feijoada!');
  print(myMeal.description);
}
