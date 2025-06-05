import 'package:flutter/material.dart';
import 'package:flutterthemetest/tools/extensions/size_extension.dart';
import 'package:google_fonts/google_fonts.dart';

Widget buildLinkLabel(BuildContext context,String text, VoidCallback onPressed) {
  return GestureDetector(
    
    onTap: onPressed,
    child: Padding(
      padding: EdgeInsets.only(left: 14.0.w(context), right: 14.0.w(context)),
      child: Text(
        text,
        style: TextStyle(
          color: Theme.of(context).colorScheme.tertiary,
          fontFamily: GoogleFonts.leagueSpartan().fontFamily,
          fontWeight: FontWeight.w600,
          fontSize: 14.0.sp(context),
        ),
      ),
    ),
  );
}