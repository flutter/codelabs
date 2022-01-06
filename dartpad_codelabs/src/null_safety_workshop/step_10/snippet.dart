// TODO: Remove the following line
// ignore_for_file: argument_type_not_assignable

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

  if (provider.value == null) {
    print('The value is null.');
    return;
  }

  printString(provider.value);
}
