// TODO: Remove the following line
// ignore_for_file: unchecked_use_of_nullable_value

int getLength(String? str) {
  // Try throwing an exception here if `str` is null.

  return str.length;
}

void main() {
  print(getLength(null));
}
