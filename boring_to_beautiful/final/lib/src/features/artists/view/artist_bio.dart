import 'package:flutter/material.dart';

import '../../../shared/classes/classes.dart';
import '../../../shared/extensions.dart';

class ArtistBio extends StatelessWidget {
  const ArtistBio({super.key, required this.artist});

  final Artist artist;

  @override
  Widget build(BuildContext context) {
    return Text(
      artist.bio,
      style: context.bodyLarge!.copyWith(
        fontSize: 16,
        color: context.colors.onSurface.withOpacity(
          0.87,
        ),
      ),
    );
  }
}
