import 'package:cat_breeds/src/shared/constants/layout.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class TextLineShimmer extends StatelessWidget {
  const TextLineShimmer({this.maxWidth = 320, super.key});

  final double maxWidth;

  @override
  Widget build(BuildContext context) => Shimmer.fromColors(
    baseColor: Colors.white,
    highlightColor: Colors.grey,
    child: Padding(
      padding: EdgeInsets.symmetric(vertical: UILayout.instance.layout4),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: maxWidth,
          minHeight: UILayout.instance.layout16,
        ),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.grey,
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(UILayout.instance.layout12),
          ),
        ),
      ),
    ),
  );
}
