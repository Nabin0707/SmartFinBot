import 'package:flutter/material.dart';
import 'package:flutterthemetest/tools/constants/color.dart';
import 'package:flutterthemetest/tools/extensions/size_extension.dart';

Widget buildCustomButton(
  BuildContext context,
  String text,
  VoidCallback onPressed, {
  bool secondary = false,
}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      padding: EdgeInsets.symmetric(
        horizontal: 7.0.w(context),
        vertical: 12.0.h(context),
      ),
      minimumSize: Size(207.0.w(context), 45.0.h(context)),
      backgroundColor: secondary == true ? AppColors.lightGreen : null,
    ),
    onPressed: onPressed,
    child: Text(
      text,
      style: TextStyle(fontSize: 20.0.sp(context), height: 1.2),
    ),
  );
}
