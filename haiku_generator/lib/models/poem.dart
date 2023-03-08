class Poem {
  final String productName;
  final String poemText;

  Poem(this.productName, this.poemText);

  Poem.fromMap(Map<String, dynamic> json)
      : poemText = json['poemText'],
        productName = json['productName'];

  Map<String, dynamic> toMap() {
    return {
      'productName': productName,
      'poemText': poemText,
    };
  }
}
