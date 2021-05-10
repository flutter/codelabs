void printThreeValues({
  int first,
  int second,
  int third,
}) {
  print('First is $first, second is $second, '
  	  'and third is $third.');
}

void printFourValues({
  int? first,
  int second,
  int? third,
  int fourth
}) {
  print('First is $first, second is $second, '
  	  'third is $third, and fourth is $fourth.');
}

void main() {
  printThreeValues(first: 1, second: 2, third: 3);
  printFourValues(first: 1, second: 2, third: 3,
  	  fourth: 4);
}

