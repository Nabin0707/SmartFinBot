import 'package:flutter/material.dart';
import 'package:flutterthemetest/tools/extensions/size_extension.dart';

class BottomSheetContainer extends StatelessWidget {
  final Widget child;
  final double? height;
  final EdgeInsetsGeometry? padding;

  const BottomSheetContainer({
    super.key,
    required this.child,
    this.height,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minHeight: height ?? 745.0.sp(context),
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(60.0.sp(context)),
          topRight: Radius.circular(60.0.sp(context)),
        ),
      ),
      padding: padding ??
          EdgeInsets.only(
            top: 90.0.sp(context),
            left: 36.0.sp(context),
            right: 36.0.sp(context),
          ),
      child: child,
    );
  }
}
