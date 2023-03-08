class Poem {
  final String productName;
  final String poemText;

  Poem(this.productName, this.poemText);

  Poem.fromMap(Map<String, dynamic> json)
      : poemText = json['poem_text'],
        productName = json['product_name'];

  Map<String, dynamic> toMap() {
    return {
      'product_name': productName,
      'poem_text': poemText,
    };
  }
}
