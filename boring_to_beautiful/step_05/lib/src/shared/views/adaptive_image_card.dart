import 'package:flutter/material.dart';

import 'image_clipper.dart';

class AdaptiveImageCard extends StatelessWidget {
  const AdaptiveImageCard({
    super.key,
    required this.image,
    required this.child,
    required this.constraints,
    this.axis = Axis.horizontal,
  });

  final String image;
  final Widget child;
  final BoxConstraints constraints;
  final Axis axis;

  @override
  Widget build(BuildContext context) {
    if (axis == Axis.vertical) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: ClippedImage(
              image,
              height: constraints.biggest.height * 0.4,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: child,
            ),
          ),
        ],
      );
    }
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        bottom: 20,
        top: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const SizedBox(width: 40),
          Container(
            constraints: const BoxConstraints(maxWidth: 200),
            child: ClippedImage(
              image,
              width: constraints.biggest.height * 0.8,
              height: constraints.biggest.height * 0.8,
              fit: BoxFit.fitWidth,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: child,
            ),
          )
        ],
      ),
    );
  }
}
