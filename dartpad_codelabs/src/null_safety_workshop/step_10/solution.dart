import 'dart:math';

class StringProvider {
  String? value = 'A String!';
}

class RandomStringProvider extends StringProvider {
  @override
  set value(String? v) {}

  @override
  String? get value => Random().nextBool() ? 'A String!' : null;
}

void printString(String str) => print(str);

void main() {
  StringProvider provider = RandomStringProvider();

  final str = provider.value;

  if (str == null) {
    print('The value is null.');
  } else {
    print('The value is not null, so print it!');
    printString(str);
  }
}
