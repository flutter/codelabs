import 'package:flutter/material.dart';

import 'shimmer_gradient.dart';
import 'shimmer_loading.dart';

class ShimmerLoadingAnim extends StatelessWidget {
  const ShimmerLoadingAnim({
    super.key,
    required this.child,
    this.isLoading = false,
  });

  final Widget child;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Shimmer(
      linearGradient: shimmerGradient,
      child: ShimmerLoading(isLoading: isLoading, child: child),
    );
  }
}
