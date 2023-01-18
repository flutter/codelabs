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
    this.isSelected = false,
    this.isPreview = true,
    this.isThreaded = false,
    this.showHeadline = false,
    this.onSelected,
  });

  final bool isSelected;
  final bool isPreview;
  final bool showHeadline;
  final bool isThreaded;
  final void Function()? onSelected;
  final Email email;

  @override
  State<EmailWidget> createState() => _EmailWidgetState();
}

class _EmailWidgetState extends State<EmailWidget> {
  late final ColorScheme _colorScheme = Theme.of(context).colorScheme;
  late Color unselectedColor = Color.alphaBlend(
    _colorScheme.primary.withOpacity(0.08),
    _colorScheme.surface,
  );

  Color get _surfaceColor {
    if (!widget.isPreview) return _colorScheme.surface;
    if (widget.isSelected) return _colorScheme.primaryContainer;
    return unselectedColor;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onSelected,
      child: Card(
        elevation: 0,
        color: _surfaceColor,
        clipBehavior: Clip.hardEdge,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (widget.showHeadline) ...[
              EmailHeadline(
                email: widget.email,
                isSelected: widget.isSelected,
              ),
            ],
            EmailContent(
              email: widget.email,
              isPreview: widget.isPreview,
              isThreaded: widget.isThreaded,
              isSelected: widget.isSelected,
            ),
          ],
        ),
      ),
    );
  }
}

class EmailContent extends StatefulWidget {
  const EmailContent({
    super.key,
    required this.email,
    required this.isPreview,
    required this.isThreaded,
    required this.isSelected,
  });

  final Email email;
  final bool isPreview;
  final bool isThreaded;
  final bool isSelected;

  @override
  State<EmailContent> createState() => _EmailContentState();
}

class _EmailContentState extends State<EmailContent> {
  late final ColorScheme _colorScheme = Theme.of(context).colorScheme;
  late final TextTheme _textTheme = Theme.of(context).textTheme;

  Widget get contentSpacer => SizedBox(height: widget.isThreaded ? 20 : 2);

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

  TextStyle? get contentTextStyle {
    if (widget.isThreaded) {
      return _textTheme.bodyLarge;
    }
    if (widget.isSelected) {
      return _textTheme.bodyMedium
          ?.copyWith(color: _colorScheme.onPrimaryContainer);
    }
    return _textTheme.bodyMedium
        ?.copyWith(color: _colorScheme.onSurfaceVariant);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LayoutBuilder(builder: (context, constraints) {
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
                        style: widget.isSelected
                            ? _textTheme.labelMedium?.copyWith(
                                color: _colorScheme.onSecondaryContainer)
                            : _textTheme.labelMedium
                                ?.copyWith(color: _colorScheme.onSurface),
                      ),
                      Text(
                        lastActiveLabel,
                        overflow: TextOverflow.fade,
                        maxLines: 1,
                        style: widget.isSelected
                            ? _textTheme.labelMedium?.copyWith(
                                color: _colorScheme.onSecondaryContainer)
                            : _textTheme.labelMedium?.copyWith(
                                color: _colorScheme.onSurfaceVariant),
                      ),
                    ],
                  ),
                ),
                if (constraints.maxWidth - 200 > 0) ...[
                  const StarButton(),
                ]
              ],
            );
          }),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (widget.isPreview) ...[
                Text(
                  widget.email.subject,
                  style: const TextStyle(fontSize: 18)
                      .copyWith(color: _colorScheme.onSurface),
                ),
              ],
              if (widget.isThreaded) ...[
                contentSpacer,
                Text(
                  "To ${widget.email.recipients.map((recipient) => recipient.name.first).join(", ")}",
                  style: _textTheme.bodyMedium,
                )
              ],
              contentSpacer,
              Text(
                widget.email.content,
                maxLines: widget.isPreview ? 2 : 100,
                overflow: TextOverflow.ellipsis,
                style: contentTextStyle,
              ),
            ],
          ),
          const SizedBox(width: 12),
          widget.email.attachments.isNotEmpty
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
              : const SizedBox.shrink(),
          if (!widget.isPreview) ...[
            const EmailReplyOptions(),
          ],
        ],
      ),
    );
  }
}

class EmailHeadline extends StatefulWidget {
  const EmailHeadline({
    super.key,
    required this.email,
    required this.isSelected,
  });

  final Email email;
  final bool isSelected;

  @override
  State<EmailHeadline> createState() => _EmailHeadlineState();
}

class _EmailHeadlineState extends State<EmailHeadline> {
  late final TextTheme _textTheme = Theme.of(context).textTheme;
  late final ColorScheme _colorScheme = Theme.of(context).colorScheme;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        height: 84,
        color: Color.alphaBlend(
          _colorScheme.primary.withOpacity(0.05),
          _colorScheme.surface,
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
                      style: _textTheme.labelMedium
                          ?.copyWith(fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              // Display a "condensed" version if the widget in the row are
              // expected to overflow.
              if (constraints.maxWidth - 200 > 0) ...[
                SizedBox(
                  height: 40,
                  width: 40,
                  child: FloatingActionButton(
                    onPressed: () {},
                    elevation: 0,
                    backgroundColor: _colorScheme.surface,
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
                    backgroundColor: _colorScheme.surface,
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
}

class EmailReplyOptions extends StatefulWidget {
  const EmailReplyOptions({super.key});

  @override
  State<EmailReplyOptions> createState() => _EmailReplyOptionsState();
}

class _EmailReplyOptionsState extends State<EmailReplyOptions> {
  late final ColorScheme _colorScheme = Theme.of(context).colorScheme;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 100) {
          return const SizedBox.shrink();
        }
        return Row(
          children: [
            Expanded(
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(_colorScheme.onInverseSurface),
                ),
                onPressed: () {},
                child: Text(
                  'Reply',
                  style: TextStyle(color: _colorScheme.onSurfaceVariant),
                ),
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(_colorScheme.onInverseSurface),
                ),
                onPressed: () {},
                child: Text(
                  'Reply All',
                  style: TextStyle(color: _colorScheme.onSurfaceVariant),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
