int getLength(String? str) {
  if (str == null) {
    throw Exception('The value is null!');
  }

  return str.length;
}

void main() {
  print(getLength(null));
}
