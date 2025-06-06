import 'package:flutter/material.dart';
import 'package:flutterthemetest/tools/extensions/size_extension.dart';
import 'package:flutterthemetest/tools/theme/gradient_theme.dart';

Widget buildGradientButton(
  BuildContext context,
  String text,
  VoidCallback onPressed, {
  GradientType gradientType = GradientType.primary,
}) {
  final gradient = GradientTheme.getGradient(gradientType);

  return Container(
    decoration: BoxDecoration(
      gradient: gradient,
      borderRadius: BorderRadius.circular(
        40,
      ), // Match default ElevatedButton rounding
    ),
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        padding: EdgeInsets.symmetric(
          horizontal: 7.0.w(context),
          vertical: 12.0.h(context),
        ),
        minimumSize: Size(207.0.w(context), 45.0.h(context)),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            40,
          ), // Rounded corners same as original
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 20.0.sp(context),
          height: 1.2,
          color: Colors.white,
        ),
      ),
    ),
  );
}
