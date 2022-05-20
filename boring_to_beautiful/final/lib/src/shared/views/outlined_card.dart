import 'package:flutter/material.dart';

class OutlinedCard extends StatefulWidget {
  const OutlinedCard({
    super.key,
    required this.child,
    this.clickable = true,
  });

  final Widget child;
  final bool clickable;

  @override
  State<OutlinedCard> createState() => _OutlinedCardState();
}

class _OutlinedCardState extends State<OutlinedCard> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(_hovered ? 20 : 8);
    const animationCurve = Curves.easeInOut;
    return MouseRegion(
      onEnter: (_) {
        if (!widget.clickable) return;
        setState(() {
          _hovered = true;
        });
      },
      onExit: (_) {
        if (!widget.clickable) return;
        setState(() {
          _hovered = false;
        });
      },
      cursor: widget.clickable
          ? SystemMouseCursors.click
          : SystemMouseCursors.basic,
      child: AnimatedContainer(
        duration: kThemeAnimationDuration,
        curve: animationCurve,
        decoration: BoxDecoration(
          border: Border.all(
            color: Theme.of(context).colorScheme.outline,
            width: 1,
          ),
          borderRadius: borderRadius,
        ),
        foregroundDecoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onSurface.withOpacity(
                _hovered ? 0.12 : 0,
              ),
          borderRadius: borderRadius,
        ),
        child: TweenAnimationBuilder<BorderRadius>(
          duration: kThemeAnimationDuration,
          curve: animationCurve,
          tween: Tween(begin: BorderRadius.zero, end: borderRadius),
          builder: (context, borderRadius, child) => ClipRRect(
            clipBehavior: Clip.antiAlias,
            borderRadius: borderRadius,
            child: child,
          ),
          child: widget.child,
        ),
      ),
    );
  }
}
