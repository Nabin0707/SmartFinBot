import 'package:flutter/material.dart';
import 'package:flutterthemetest/tools/constants/color.dart';
import 'package:google_fonts/google_fonts.dart';

final lightTextTheme = TextTheme(
  displayLarge: GoogleFonts.poppins(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: AppColors.fenceGreen,
  ),
  displayMedium: GoogleFonts.poppins(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColors.fenceGreen,
  ),
  displaySmall: GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.cyprus,
  ),
  headlineMedium: GoogleFonts.poppins(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: AppColors.cyprus,
  ),
  headlineSmall: GoogleFonts.poppins(
    fontSize: 18,
    fontWeight: FontWeight.w300,
    color: AppColors.cyprus,
  ),
  titleLarge: GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.w200,
    color: AppColors.fenceGreen,
  ),
);



final darkTextTheme = TextTheme(
  displayLarge: GoogleFonts.poppins(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: AppColors.honeydew,
  ),
  displayMedium: GoogleFonts.poppins(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColors.honeydew,
  ),
  displaySmall: GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.lightGreen,
  ),
  headlineMedium: GoogleFonts.poppins(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: AppColors.lightGreen,
  ),
  headlineSmall: GoogleFonts.poppins(
    fontSize: 18,
    fontWeight: FontWeight.w300,
    color: AppColors.lightGreen,
  ),
  titleLarge: GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.w200,
    color: AppColors.lightGreen,
  ),
);
