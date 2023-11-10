import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class OverlayScreen extends StatelessWidget {
  const OverlayScreen({
    super.key,
    required this.title,
    this.subtitle,
  });

  final String title;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(0, subtitle != null ? -0.15 : -0.2),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headlineLarge,
          ).animate().slideY(duration: 750.ms, begin: -3, end: 0),
          if (subtitle != null) ...[
            const SizedBox(height: 16),
            Text(
              subtitle!,
              style: Theme.of(context).textTheme.headlineSmall,
            )
                .animate(onPlay: (controller) => controller.repeat())
                .fadeIn(duration: 1.seconds)
                .then()
                .fadeOut(duration: 1.seconds),
          ],
        ],
      ),
    );
  }
}
