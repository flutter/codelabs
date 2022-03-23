import './classes.dart';

class Song {
  final Artist artist;
  final String title;
  final Duration length;
  final MyArtistImage image;

  const Song(this.title, this.artist, this.length, this.image);
}
