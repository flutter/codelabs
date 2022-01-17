// TODO: Remove the following line
// ignore_for_file: not_initialized_non_nullable_instance_field

class Meal {
  String description;

  void setDescription(String str) {
    description = str;
  }
}

void main() {
  final myMeal = Meal();
  myMeal.setDescription('Feijoada!');
  print(myMeal.description);
}
