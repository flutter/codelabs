class Name {
  const Name({
    required this.first,
    required this.last,
  });

  final String first;
  final String last;
  String get fullName => "$first $last";
}
