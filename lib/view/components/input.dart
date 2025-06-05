import 'package:flutter/material.dart';
import 'package:flutterthemetest/tools/constants/color.dart';
import 'package:flutterthemetest/tools/extensions/size_extension.dart';

Widget customInputField(
  BuildContext context, {
  required String label,
  required TextEditingController controller,
  bool obscureText = false,
  TextInputType keyboardType = TextInputType.text,
}) {
  return TextField(
    controller: controller,
    obscureText: obscureText,
    keyboardType: keyboardType,
    style: TextStyle(
      fontSize: 16.0.sp(context),
      color: AppColors.fenceGreen,
      fontStyle: Theme.of(context).textTheme.displaySmall?.fontStyle ?? FontStyle.normal,
    ),
    decoration: InputDecoration(
      labelText: label,
      focusColor: AppColors.lightBlue,
      fillColor: AppColors.lightGreen, // 🌿 Always light green background
      filled: true,
      labelStyle: TextStyle(
        fontSize: 16.0.sp(context),
        color: AppColors.fenceGreen,
        backgroundColor: AppColors.lightGreen,
        fontStyle: Theme.of(context).textTheme.displaySmall?.fontStyle ?? FontStyle.normal,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(18.0.sp(context)),
        borderSide: BorderSide.none,
      ),
      contentPadding: EdgeInsets.symmetric(
        horizontal: 34.0.sp(context),
        vertical: 13.0.sp(context),
      ),
    ),
  );
}
