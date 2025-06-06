import 'package:flutter/material.dart';
import 'package:flutterthemetest/tools/tools.dart';
import 'package:flutterthemetest/tools/extensions/size_extension.dart';

class BottomContainerLogin extends StatelessWidget {
  const BottomContainerLogin({super.key, required this.children});
  final Widget children;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minHeight: 745.0.sp(context), // Ensure minimum height
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(60.0.sp(context)),
          topRight: Radius.circular(60.0.sp(context)),
        ),
      ),
      padding: EdgeInsets.only(
        top: 90.0.sp(context),
        left: 36.0.sp(context),
        right: 36.0.sp(context),
      ),
      // You need to provide a child widget here. Replace 'Bottom_column()' or any other widget as needed.
      child: children,
    );
  }
}
