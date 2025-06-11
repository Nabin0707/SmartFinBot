import 'package:flutter/material.dart';
import 'package:flutterthemetest/tools/constants/color.dart';
import 'package:flutterthemetest/tools/extensions/size_extension.dart';

/// A custom arrow-style button used in onboarding or navigation.
/// Shows an arrow to the left or right depending on [isForward].
/// Can optionally use a secondary color scheme.
Widget buildArrowButton(
  BuildContext context,
  String text,
  VoidCallback onPressed, {
  bool isForward = true,
  bool secondary = false,
}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      padding: EdgeInsets.symmetric(
        horizontal: 12.0.w(context),
        vertical: 12.0.h(context),
      ),
      minimumSize: Size(207.0.w(context), 45.0.h(context)),
      backgroundColor: secondary ? AppColors.lightGreen : null,
    ),
    onPressed: onPressed,
    child: Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: isForward
          ? [
              Text(
                text,
                style: TextStyle(
                  fontSize: 20.0.sp(context),
                  height: 1.2,
                ),
              ),
              SizedBox(width: 8.0.w(context)),
              Icon(
                Icons.arrow_forward,
                size: 22.0.sp(context),
              ),
            ]
          : [
              Icon(
                Icons.arrow_back,
                size: 22.0.sp(context),
              ),
              SizedBox(width: 8.0.w(context)),
              Text(
                text,
                style: TextStyle(
                  fontSize: 20.0.sp(context),
                  height: 1.2,
                ),
              ),
            ],
    ),
  );
}
