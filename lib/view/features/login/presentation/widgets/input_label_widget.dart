import 'package:flutter/material.dart';
import 'package:flutterthemetest/tools/extensions/size_extension.dart';
import 'package:flutterthemetest/tools/extensions/string_extension.dart';

Widget buildInputLabel(BuildContext context, String text) {
  return Container(
    width: double.infinity,
    alignment: Alignment.centerLeft,
    child: Padding(
      
      padding: EdgeInsets.only(
        left: 30.0.w(context),
        right: 30.0.w(context),
        top: 14.0.h(context),
        bottom: 14.0.h(context),
      ),
      child: Text(
        text.capitalize(), 
        style: TextStyle(
          fontSize: 16.0.sp(context),
          fontStyle: Theme.of(context).textTheme.displaySmall?.fontStyle,
          color: Theme.of(context).colorScheme.tertiary,
        ),
      ),
    ),
  );
}
