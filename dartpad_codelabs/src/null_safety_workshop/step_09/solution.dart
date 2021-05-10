import 'dart:math';

class RandomStringProvider {
  String? get value =>
    Random().nextBool() ? 'A String!' : null;
}

void printString(String str) => print(str);

void main() {
  final provider = RandomStringProvider();

  final str = provider.value;

  if (str == null) {
    print('The value is null.');
  }

  printString(str);
}
