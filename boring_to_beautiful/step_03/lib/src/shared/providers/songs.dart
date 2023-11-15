// Copyright 2022 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import '../classes/classes.dart';
import '../extensions.dart';
import './artists.dart';

class SongsProvider {
  static SongsProvider get shared => SongsProvider();
  List<RankedSong> get songs => _songs;
}

// Separated out to avoid reinstantiating the list on every access.
final _songs = <RankedSong>[
  RankedSong(
    1,
    'Before You',
    ArtistsProvider.shared.getArtist('jmo')!,
    '2:45'.toDuration(),
    const MyArtistImage(
      image: 'assets/images/albums/artist6-album1.jpg',
      sourceLink: 'https://unsplash.com/photos/cTKGZJTMJQU',
      sourceName: 'Drew Dizzy Graham',
    ),
  ),
  RankedSong(
    2,
    'Hopeful Romantics',
    ArtistsProvider.shared.getArtist('jmo')!,
    '4:44'.toDuration(),
    const MyArtistImage(
      image: 'assets/images/albums/artist6-album2.jpg',
      sourceLink: 'https://unsplash.com/photos/Vya8eGk5Y64',
      sourceName: 'Saffu',
    ),
  ),
  RankedSong(
    3,
    'I Still Believe',
    ArtistsProvider.shared.getArtist('jmo')!,
    '3:07'.toDuration(),
    const MyArtistImage(
      image: 'assets/images/albums/artist6-album3.jpg',
      sourceLink: 'https://unsplash.com/photos/m82uh_vamhg',
      sourceName: 'Vicko Mozara',
    ),
  ),
  RankedSong(
    1,
    'Forever Dancing',
    ArtistsProvider.shared.getArtist('jonjames')!,
    '3:35'.toDuration(),
    const MyArtistImage(
        image: 'assets/images/albums/artist4-album2.jpg',
        sourceLink: 'https://unsplash.com/photos/RQgKM1h2agA',
        sourceName: 'Alexandru Acea'),
  ),
  RankedSong(
    2,
    'So In Love',
    ArtistsProvider.shared.getArtist('jonjames')!,
    '3:52'.toDuration(),
    const MyArtistImage(
        image: 'assets/images/albums/artist4-album1.jpg',
        sourceLink: 'https://unsplash.com/photos/ZWDg7v2FPWE',
        sourceName: 'Jr Korpa'),
  ),
  RankedSong(
    3,
    'Remembering Us',
    ArtistsProvider.shared.getArtist('jonjames')!,
    '3:39'.toDuration(),
    const MyArtistImage(
        image: 'assets/images/albums/artist4-album3.jpg',
        sourceLink: 'https://unsplash.com/photos/rX12B5uX7QM',
        sourceName: 'Stormseeker'),
  ),
  RankedSong(
    1,
    'That Song On The Radio',
    ArtistsProvider.shared.getArtist('lb')!,
    '3:46'.toDuration(),
    const MyArtistImage(
      image: 'assets/images/albums/artist1-album2.jpg',
      sourceLink: 'https://unsplash.com/photos/6etHcucBiRg',
      sourceName: 'Keagan Henman',
    ),
  ),
  RankedSong(
    2,
    'Those Country Hills',
    ArtistsProvider.shared.getArtist('lb')!,
    '3:48'.toDuration(),
    const MyArtistImage(
      image: 'assets/images/albums/artist1-album1.jpg',
      sourceLink: 'https://unsplash.com/photos/f0WoQluZ8XI',
      sourceName: 'Keagan Henman',
    ),
  ),
  RankedSong(
    3,
    'Hard To Say Goodbye',
    ArtistsProvider.shared.getArtist('lb')!,
    '3:48'.toDuration(),
    const MyArtistImage(
      image: 'assets/images/albums/artist1-album1.jpg',
      sourceLink: 'https://unsplash.com/photos/f0WoQluZ8XI',
      sourceName: 'Keagan Henman',
    ),
  ),
  RankedSong(
    4,
    'Being Your Man',
    ArtistsProvider.shared.getArtist('lb')!,
    '3:36'.toDuration(),
    const MyArtistImage(
      image: 'assets/images/albums/artist1-album2.jpg',
      sourceLink: 'https://unsplash.com/photos/6etHcucBiRg',
      sourceName: 'Keagan Henman',
    ),
  ),
  RankedSong(
    5,
    'Typical Friday Night',
    ArtistsProvider.shared.getArtist('lb')!,
    '3:41'.toDuration(),
    const MyArtistImage(
      image: 'assets/images/albums/artist1-album2.jpg',
      sourceLink: 'https://unsplash.com/photos/6etHcucBiRg',
      sourceName: 'Keagan Henman',
    ),
  ),
];
