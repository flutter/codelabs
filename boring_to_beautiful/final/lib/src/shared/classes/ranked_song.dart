import './classes.dart';

class RankedSong extends Song {
  final int ranking;

  const RankedSong(this.ranking, String title, Artist artist, Duration length,
      MyArtistImage image)
      : super(title, artist, length, image);
}
