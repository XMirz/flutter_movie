import 'package:flutter/material.dart';
import 'package:getx_movie/core/values/colors.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerWidget extends StatelessWidget {
  final double? width;
  final double? height;
  final BorderRadius? borderRadius;
  final BoxShape shape;
  const ShimmerWidget._({
    Key? key,
    this.width = double.infinity,
    this.height = double.infinity,
    this.borderRadius = const BorderRadius.all(Radius.circular(0)),
    this.shape = BoxShape.rectangle,
  }) : super(key: key);

  // ignore: use_key_in_widget_constructors
  const ShimmerWidget.rectangle(
      {double? height, double? width, BorderRadius? borderRadius})
      : this._(height: height, width: width, borderRadius: borderRadius);

  // ignore: use_key_in_widget_constructors
  const ShimmerWidget.circular({double? size})
      : this._(
            height: size,
            width: size,
            shape: BoxShape.circle,
            borderRadius: null);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      period: const Duration(seconds: 2),
      enabled: true,
      baseColor: mBackgroundSecondary,
      highlightColor: const Color.fromARGB(255, 59, 62, 77),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            // Idk why i shoul provide color
            shape: shape,
            borderRadius: borderRadius,
            color: mBackgroundSecondary),
      ),
    );
  }
}
