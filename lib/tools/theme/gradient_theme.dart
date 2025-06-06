import 'package:flutter/material.dart';
import 'package:flutterthemetest/tools/constants/color.dart';

class GradientTheme {
  // Primary gradients
  static const LinearGradient primaryGradient = LinearGradient(
    colors: [AppColors.caribbeanGreen, AppColors.lightGreen],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient secondaryGradient = LinearGradient(
    colors: [AppColors.lightGreen, AppColors.caribbeanGreen],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  // Additional gradient themes
  static const LinearGradient verticalPrimaryGradient = LinearGradient(
    colors: [AppColors.caribbeanGreen, AppColors.lightGreen],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static const LinearGradient verticalSecondaryGradient = LinearGradient(
    colors: [AppColors.lightGreen, AppColors.caribbeanGreen],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static const LinearGradient horizontalPrimaryGradient = LinearGradient(
    colors: [AppColors.caribbeanGreen, AppColors.lightGreen],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  static const LinearGradient horizontalSecondaryGradient = LinearGradient(
    colors: [AppColors.lightGreen, AppColors.caribbeanGreen],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  // Radial gradients
  static const RadialGradient primaryRadialGradient = RadialGradient(
    colors: [AppColors.caribbeanGreen, AppColors.lightGreen],
    center: Alignment.center,
    radius: 1.0,
  );

  static const RadialGradient secondaryRadialGradient = RadialGradient(
    colors: [AppColors.lightGreen, AppColors.caribbeanGreen],
    center: Alignment.center,
    radius: 1.0,
  );

  // Custom gradients with multiple stops
  static final LinearGradient multiStopPrimaryGradient = LinearGradient(
    colors: [
      AppColors.caribbeanGreen,
      Color.lerp(AppColors.caribbeanGreen, AppColors.lightGreen, 0.5)!,
      AppColors.lightGreen,
    ],
    stops: const [0.0, 0.5, 1.0],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  // Blue gradients using your blue color palette
  static const LinearGradient blueGradient = LinearGradient(
    colors: [AppColors.oceanBlue, AppColors.vividBlue],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient lightBlueGradient = LinearGradient(
    colors: [AppColors.vividBlue, AppColors.lightBlue],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient fullBlueGradient = LinearGradient(
    colors: [AppColors.oceanBlue, AppColors.vividBlue, AppColors.lightBlue],
    stops: [0.0, 0.5, 1.0],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  // Dark theme gradients
  static const LinearGradient darkGradient = LinearGradient(
    colors: [AppColors.voidGreen, AppColors.fenceGreen],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient darkToMediumGradient = LinearGradient(
    colors: [AppColors.fenceGreen, AppColors.cyprus],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  // Mixed color gradients
  static const LinearGradient greenToBlueGradient = LinearGradient(
    colors: [AppColors.caribbeanGreen, AppColors.vividBlue],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient lightMixGradient = LinearGradient(
    colors: [AppColors.lightGreen, AppColors.lightBlue],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  // Subtle gradients
  static const LinearGradient subtleGreenGradient = LinearGradient(
    colors: [AppColors.honeydew, AppColors.lightGreen],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  // Method to get gradient by type
  static LinearGradient getGradient(GradientType type) {
    switch (type) {
      case GradientType.primary:
        return primaryGradient;
      case GradientType.secondary:
        return secondaryGradient;
      case GradientType.verticalPrimary:
        return verticalPrimaryGradient;
      case GradientType.verticalSecondary:
        return verticalSecondaryGradient;
      case GradientType.horizontalPrimary:
        return horizontalPrimaryGradient;
      case GradientType.horizontalSecondary:
        return horizontalSecondaryGradient;
      case GradientType.multiStopPrimary:
        return multiStopPrimaryGradient;
      default:
        return primaryGradient;
    }
  }

  // Method to get shadow color for gradient
  static Color getShadowColor(GradientType type, {double opacity = 0.3}) {
    LinearGradient gradient = getGradient(type);
    // ignore: deprecated_member_use
    return gradient.colors.first.withOpacity(opacity);
  }

  // Method to create custom gradient
  static LinearGradient createCustomGradient({
    required List<Color> colors,
    AlignmentGeometry begin = Alignment.topLeft,
    AlignmentGeometry end = Alignment.bottomRight,
    List<double>? stops,
  }) {
    return LinearGradient(
      colors: colors,
      begin: begin,
      end: end,
      stops: stops,
    );
  }

  // Preset color combinations
  static const List<Color> greenTealCombination = [
    AppColors.caribbeanGreen,
    AppColors.lightGreen,
  ];

  static const List<Color> tealGreenCombination = [
    AppColors.lightGreen,
    AppColors.caribbeanGreen,
  ];

  static const List<Color> blueCombination = [
    AppColors.oceanBlue,
    AppColors.vividBlue,
  ];

  static const List<Color> lightBlueCombination = [
    AppColors.vividBlue,
    AppColors.lightBlue,
  ];

  static const List<Color> darkCombination = [
    AppColors.voidGreen,
    AppColors.fenceGreen,
  ];

  static const List<Color> mixedCombination = [
    AppColors.caribbeanGreen,
    AppColors.vividBlue,
  ];

  static const List<Color> subtleCombination = [
    AppColors.honeydew,
    AppColors.lightGreen,
  ];

  // Method to get colors for gradient type
  static List<Color> getGradientColors(GradientType type) {
    switch (type) {
      case GradientType.primary:
      case GradientType.verticalPrimary:
      case GradientType.horizontalPrimary:
      case GradientType.multiStopPrimary:
        return greenTealCombination;
      case GradientType.secondary:
      case GradientType.verticalSecondary:
      case GradientType.horizontalSecondary:
        return tealGreenCombination;
      default:
        return greenTealCombination;
    }
  }
}

// Enum for gradient types
enum GradientType {
  primary,
  secondary,
  verticalPrimary,
  verticalSecondary,
  horizontalPrimary,
  horizontalSecondary,
  multiStopPrimary,
  blue,
  lightBlue,
  fullBlue,
  dark,
  darkToMedium,
  greenToBlue,
  lightMix,
  subtleGreen,
}