import 'dart:math';

import 'package:collection/collection.dart';
import '../classes/classes.dart';

class ArtistsProvider {
  static ArtistsProvider get shared => ArtistsProvider();

  List<Artist> get artists => const [
        Artist(
          id: 'jmo',
          name: 'Jessie Morrison',
          image: MyArtistImage(
            image: 'assets/images/artists/woman.jpeg',
            sourceLink: 'https://unsplash.com/photos/w8wpFqiMpW8',
            sourceName: 'Daniel Monteiro',
          ),
          bio:
              'Jessie "JMo" Morrison is an American singer, actress, and dancer. The following year she won over America\'s hearts first appearing in the 2004 movie Unexpected Engagement. Soon after she released her debut album, Hopeful Romantics.',
          updates: [
            'So happy that everyone is loving the new music! It\'s been my pride and joy to work on and I\'m thrilled that you finally get to hear it!',
            'Happy Valentine\'s Day y\'all!!! I love each and every one of you 💋😘',
            '#HappyGalentinesDay!!! Chocolates. Ice Cream. Your favorite rom-com. Let\'s goo!!! 💕✨',
          ],
          events: [
            Event(
                date: '1/20/22',
                title: 'Jessie Morrison: No More Heartbreak Tour',
                location: 'Mountain View, California',
                link: 'Tickets'),
            Event(
                date: '1/22/22',
                title: 'Jessie Morrison: No More Heartbreak Tour',
                location: 'Austin, Texas',
                link: 'Tickets'),
            Event(
                date: '1/23/22',
                title: 'Jessie Morrison: No More Heartbreak Tour',
                location: 'Houston, Texas',
                link: 'Tickets'),
            Event(
                date: '2/8/22',
                title: 'Jessie Morrison: No More Heartbreak Tour',
                location: 'Los Angeles, California',
                link: 'Tickets'),
          ],
          news: [
            News(
              title:
                  'Jessie Morrison a 26-stop cross country tour for the first time in 6 years.',
              author: 'By Jacqueline Stewart',
              blurb:
                  'Our favorite triple-threat Jessie Morrison is back, this time with a 26 stop tour across the country. She\'ll kick things off in Mountain View on January 20th, 2022 in Mountain View California with more stops being announced over the next few weeks...',
              image: MyArtistImage(
                image: 'assets/images/news/concert.jpeg',
                sourceLink: 'https://unsplash.com/photos/hzgs56Ze49s',
                sourceName: 'Anthony DELANOIX',
              ),
            )
          ],
        ),
        Artist(
          id: 'lb',
          name: 'Lucas Bryant',
          image: MyArtistImage(
            image: 'assets/images/albums/artist1-album2.jpg',
            sourceLink: 'https://unsplash.com/photos/6etHcucBiRg',
            sourceName: 'Keagan Henman',
          ),
          bio:
              'Lucas Bryant is an American country music singer and songwriter. He moved to Nashville at the age of 18 to pursue his country music career. With 34 awards to his name, he currently holds the record for most awards in country music.',
          updates: [
            'Who\'s ready to party this weekend?! See you tomorrow, Nashville! #LBlive',
            'Can\'t wait to get back on stage after so long. What songs do you want to hear?',
            'We\'re going all in this weekend! How are you doing, Vegas?!',
          ],
          events: [
            Event(
                date: '5/16/22',
                title: 'Back To My Hometown Tour',
                location: 'Indianapolis, IN',
                link: 'Tickets'),
            Event(
                date: '5/18/22',
                title: 'Back To My Hometown Tour',
                location: 'San Antonio, TX',
                link: 'Tickets'),
            Event(
                date: '5/20/22',
                title: 'Back To My Hometown Tour',
                location: 'Phoenix, AZ',
                link: 'Tickets'),
            Event(
                date: '5/23/22',
                title: 'Back To My Hometown Tour',
                location: 'San Diego, CA',
                link: 'Tickets'),
          ],
          news: [
            News(
              title:
                  'Country Music Favorites Lucas Bryant, Mariam Lubbock, Michelle Delaney and Jackson Murray Join Forces For The Biggest Performance in Country History.',
              author: 'Lonnie Hall',
              blurb:
                  'Calling all country music fans! Fasten your seat belts because the 2022 Best of Country Awards is expecting a huge performance from some of our favorite artists. Country music legends Mariam Lubbock and Jackson Murray will be joined by Lucas Bryant and Michelle Delaney for a performance we\'ll never forget.',
              image: MyArtistImage(
                image: 'assets/images/albums/artist1-album2.jpg',
                sourceLink: 'https://unsplash.com/photos/6etHcucBiRg',
                sourceName: 'Keagan Henman',
              ),
            ),
          ],
        ),
        Artist(
          id: 'jonjames',
          name: 'Jon James',
          image: MyArtistImage(
            image: 'assets/images/artists/joe.jpg',
            sourceLink: 'https://unsplash.com/photos/k7UKO-tT5QU',
            sourceName: 'Natalie Runnerstrom',
          ),
          bio:
              'Jon James is an American singer and songwriter. He\'s best known for his number one single "Never Going Back" which stayed atop the charts for 10 weeks.',
          updates: [
            '3. MORE. DAYS. Who\'s ready for #FallingForYou?! Tune in tomorrow to see the full track list!',
            '4 days until I get to share some of the favorite songs I\'ve ever written with you.',
            '#FallingForYou dropping in 5 days! Send me your favorite music video concepts 🎥 😎',
          ],
          events: [
            Event(
                date: '10/22/21',
                title: 'Falling For You Tour',
                location: 'Dallas, Texas',
                link: 'Ticketmaster'),
            Event(
                date: '10/23/21',
                title: 'Falling For You Tour',
                location: 'Houston, Texas',
                link: 'Ticketmaster'),
            Event(
                date: '10/26/21',
                title: 'Falling For You Tour',
                location: 'Phoenix, Arizona',
                link: 'Ticketmaster'),
            Event(
                date: '10/27/21',
                title: 'Falling For You Tour',
                location: 'Los Angeles, California',
                link: 'Ticketmaster'),
          ],
          news: [
            News(
              title:
                  'Jon James is excited for the release of his sixth album "Falling For You"',
              author: 'Top Media Today',
              blurb:
                  'Jon James will be dropping his new album "Falling For You" on Friday to much fan excitement. The 6-time Grammy winning artist has spent the last year writing and recording for this album that\'s been dubbed "his best work yet."',
              image: MyArtistImage(
                  image: 'assets/images/news/recording_studio.jpg',
                  sourceLink: 'https://unsplash.com/photos/CbOGmLA46JI',
                  sourceName: 'Yohann LIBOT'),
            )
          ],
        ),
      ];

  Artist? getArtist(String id) {
    return artists.firstWhereOrNull((artist) => artist.id == id);
  }

  Artist get randomArtist => artists[Random().nextInt(artists.length)];
}
