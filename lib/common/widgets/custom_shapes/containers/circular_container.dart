import 'package:e_commerce/utils/constants/colors.dart';
import 'package:flutter/cupertino.dart';

class TCircularContainer extends StatelessWidget {
  const TCircularContainer({
    super.key,
    this.width = 400,
    this.height = 400,
    this.padding = 0,
    this.borderRadius = 400,
    this.color = TColors.white,
    this.child,
    this.margin,
    this.backgroundColor = TColors.white,
  });
  final double? width;
  final double? height;
  final double padding;
  final EdgeInsetsGeometry? margin;
  final double borderRadius;
  final Color color;
  final Color? backgroundColor;

  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      color: backgroundColor,
      margin: margin,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: color.withOpacity(0.1),
      ),
      child: child,
    );
  }
}
