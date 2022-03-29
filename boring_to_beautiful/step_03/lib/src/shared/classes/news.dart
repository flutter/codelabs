import './classes.dart';

class News {
  const News({
    required this.title,
    required this.author,
    required this.blurb,
    required this.image,
  });

  final String title;
  final String author;
  final String blurb;
  final MyArtistImage image;
}
