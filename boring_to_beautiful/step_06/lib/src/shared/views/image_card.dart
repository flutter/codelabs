import 'package:flutter/material.dart';
import '../../shared/extensions.dart';
import 'outlined_card.dart';

class ImageCard extends StatelessWidget {
  const ImageCard(
      {super.key,
      required this.title,
      required this.details,
      required this.image,
      this.subtitle,
      this.clickable = false});

  final String title;
  final String? subtitle;
  final String details;
  final String image;
  final bool clickable;

  @override
  Widget build(BuildContext context) {
    const padding = EdgeInsets.all(8.0);
    return OutlinedCard(
      clickable: clickable,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: LayoutBuilder(builder: (context, constraints) {
          return Row(
            children: [
              if (constraints.maxWidth > 600)
                SizedBox(
                  width: 170,
                  height: 170,
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                  ),
                ),
              Expanded(
                child: Padding(
                  padding: padding,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Text(
                          title,
                          style: context.titleLarge!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                      ),
                      if (subtitle != null)
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            subtitle!,
                            style: context.labelMedium,
                          ),
                        ),
                      Text(
                        details,
                        style: context.labelMedium?.copyWith(
                          fontSize: 16,
                          height: 1.25,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
