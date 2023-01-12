// Copyright 2022 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import '../models/models.dart';
import 'star_button.dart';

enum EmailType {
  preview,
  threaded,
  primaryThreaded,
}

class EmailWidget extends StatefulWidget {
  const EmailWidget({
    super.key,
    required this.email,
    this.selected = false,
    this.isPreview = true,
    this.isThreaded = false,
    this.showHeadline = false,
    this.onSelected,
  });

  final bool selected;
  final bool isPreview;
  final bool showHeadline;
  final bool isThreaded;
  final void Function()? onSelected;
  final Email email;

  @override
  State<EmailWidget> createState() => _EmailWidgetState();
}

class _EmailWidgetState extends State<EmailWidget> {
  late ColorScheme colorScheme = Theme.of(context).colorScheme;
  late TextTheme textTheme = Theme.of(context).textTheme;
  late Color unselectedColor = Color.alphaBlend(
    colorScheme.primary.withOpacity(0.08),
    colorScheme.surface,
  );

  Color get surfaceColor {
    if (!widget.isPreview) return colorScheme.surface;
    if (widget.selected) return colorScheme.primaryContainer;
    return Color.alphaBlend(
      colorScheme.primary.withOpacity(0.08),
      colorScheme.surface,
    );
  }

  String get lastActiveLabel {
    final DateTime now = DateTime.now();
    if (widget.email.sender.lastActive.isAfter(now)) throw ArgumentError();
    final Duration elapsedTime =
        widget.email.sender.lastActive.difference(now).abs();
    if (elapsedTime.inSeconds < 60) return '${elapsedTime.inSeconds}s';
    if (elapsedTime.inMinutes < 60) return '${elapsedTime.inMinutes}m';
    if (elapsedTime.inHours < 60) return '${elapsedTime.inHours}h';
    if (elapsedTime.inDays < 365) return '${elapsedTime.inDays}d';
    throw UnimplementedError();
  }

  Widget get headline {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        height: 84,
        color: Color.alphaBlend(
          Theme.of(context).colorScheme.primary.withOpacity(0.05),
          Theme.of(context).colorScheme.surface,
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 12, 12, 12),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.email.subject,
                      maxLines: 1,
                      overflow: TextOverflow.fade,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      '${widget.email.replies.toString()} Messages',
                      maxLines: 1,
                      overflow: TextOverflow.fade,
                      style: Theme.of(context)
                          .textTheme
                          .labelMedium
                          ?.copyWith(fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              if (constraints.maxWidth - 200 > 0) ...[
                SizedBox(
                  height: 40,
                  width: 40,
                  child: FloatingActionButton(
                    onPressed: () {},
                    elevation: 0,
                    backgroundColor: Theme.of(context).colorScheme.surface,
                    child: const Icon(Icons.delete_outline),
                  ),
                ),
                const Padding(padding: EdgeInsets.only(right: 8.0)),
                SizedBox(
                  height: 40,
                  width: 40,
                  child: FloatingActionButton(
                    onPressed: () {},
                    elevation: 0,
                    backgroundColor: Theme.of(context).colorScheme.surface,
                    child: const Icon(Icons.more_vert),
                  ),
                ),
              ]
            ],
          ),
        ),
      );
    });
  }

  Widget get header {
    return LayoutBuilder(builder: (context, constraints) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (constraints.maxWidth - 200 > 0) ...[
            CircleAvatar(
              backgroundImage: AssetImage(widget.email.sender.avatarUrl),
            ),
            const Padding(padding: EdgeInsets.symmetric(horizontal: 6.0)),
          ],
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.email.sender.name.fullName,
                  overflow: TextOverflow.fade,
                  maxLines: 1,
                  style: widget.selected
                      ? textTheme.labelMedium
                          ?.copyWith(color: colorScheme.onSecondaryContainer)
                      : textTheme.labelMedium
                          ?.copyWith(color: colorScheme.onSurface),
                ),
                Text(
                  lastActiveLabel,
                  overflow: TextOverflow.fade,
                  maxLines: 1,
                  style: widget.selected
                      ? textTheme.labelMedium
                          ?.copyWith(color: colorScheme.onSecondaryContainer)
                      : textTheme.labelMedium
                          ?.copyWith(color: colorScheme.onSurfaceVariant),
                ),
              ],
            ),
          ),
          if (constraints.maxWidth - 200 > 0) ...[
            const StarButton(),
          ]
        ],
      );
    });
  }

  Widget get content {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.isPreview) ...[
          Text(
            widget.email.subject,
            style: const TextStyle(fontSize: 18)
                .copyWith(color: colorScheme.onSurface),
          ),
        ],
        if (widget.isThreaded) ...[
          contentSpacing,
          Text(
            "To ${widget.email.recipients.map((recipient) => recipient.name.first).join(", ")}",
            style: textTheme.bodyMedium,
          )
        ],
        contentSpacing,
        Text(
          widget.email.content,
          maxLines: widget.isPreview ? 2 : 100,
          overflow: TextOverflow.ellipsis,
          style: contentTextStyle,
        ),
      ],
    );
  }

  Padding get contentSpacing {
    final double padding = widget.isThreaded ? 20 : 2;
    return Padding(padding: EdgeInsets.only(bottom: padding));
  }

  TextStyle? get contentTextStyle {
    if (widget.isThreaded) {
      return textTheme.bodyLarge;
    }
    if (widget.selected) {
      return textTheme.bodyMedium
          ?.copyWith(color: colorScheme.onPrimaryContainer);
    }
    return textTheme.bodyMedium?.copyWith(color: colorScheme.onSurfaceVariant);
  }

  Widget? get thumbnail {
    return widget.email.attachments.isNotEmpty
        ? Container(
            height: 96,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(widget.email.attachments.first.url),
              ),
            ),
          )
        : null;
  }

  Widget get replyOptions {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 100) return const SizedBox.shrink();
        return Row(
          children: [
            Expanded(
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(colorScheme.onInverseSurface),
                ),
                onPressed: () {},
                child: Text(
                  'Reply',
                  style: TextStyle(color: colorScheme.onSurfaceVariant),
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.only(right: 8.0)),
            Expanded(
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(colorScheme.onInverseSurface),
                ),
                onPressed: () {},
                child: Text(
                  'Reply All',
                  style: TextStyle(color: colorScheme.onSurfaceVariant),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onSelected,
      child: Container(
        decoration: BoxDecoration(
          color: surfaceColor,
          borderRadius: BorderRadius.circular(12.0),
        ),
        clipBehavior: Clip.hardEdge,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (widget.showHeadline) ...[
              headline,
            ],
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  header,
                  const Padding(padding: EdgeInsets.only(bottom: 8.0)),
                  content,
                  const Padding(padding: EdgeInsets.only(bottom: 12.0)),
                  if (thumbnail != null) ...[
                    thumbnail!,
                  ],
                  if (!widget.isPreview) ...[
                    replyOptions,
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
