// TODO: Remove the following line
// ignore_for_file: missing_default_value_for_parameter

int addThreeValues({
  int first,
  int second,
  int third,
}) {
  return first + second + third;
}

void main() {
  final sum = addThreeValues(
    first: 2,
    second: 5,
    third: 3,
  );

  print(sum);
}
