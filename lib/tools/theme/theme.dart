import 'package:flutter/material.dart';
import 'package:flutterthemetest/tools/constants/color.dart';
import 'package:flutterthemetest/tools/constants/font.dart';

class AppTheme {
  // Theme constants
  static const String light = 'light';
  static const String dark = 'dark';
  static const String system = 'system';

  static const List<String> themes = [light, dark, system];

  // Private static variable with getter/setter
  static String _currentTheme = light;

  static String get current => _currentTheme;

  static set current(String theme) {
    if (themes.contains(theme)) {
      _currentTheme = theme;
    } else {
      throw ArgumentError(
        'Invalid theme: $theme. Valid themes are: ${themes.join(', ')}',
      );
    }
  }

  // Theme checking methods
  static bool isDarkMode() => _currentTheme == dark;
  static bool isLightMode() => _currentTheme == light;
  static bool isSystemMode() => _currentTheme == system;

  // Enhanced toggle that cycles through all themes
  static void toggleTheme() {
    switch (_currentTheme) {
      case light:
        _currentTheme = dark;
        break;
      case dark:
        _currentTheme = system;
        break;
      case system:
        _currentTheme = light;
        break;
      default:
        _currentTheme = light;
    }
  }

  // Alternative toggle between just light and dark
  static void toggleLightDark() {
    if (_currentTheme == light) {
      _currentTheme = dark;
    } else if (_currentTheme == dark) {
      _currentTheme = light;
    }
    // If system mode, default to light
    else {
      _currentTheme = light;
    }
  }

  // Static theme data getters (since the methods were static in original)
  static ThemeData get lightTheme => ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.light,
      seedColor: AppColors.caribbeanGreen,
      primary: AppColors.caribbeanGreen,
      onPrimary: AppColors.cyprus,
      secondary: AppColors.lightGreen,
      onSecondary: AppColors.darkGray,
      tertiary: AppColors.fenceGreen,
      onTertiary: AppColors.honeydew,
      error: Colors.red, // Or define a custom error color if needed
      onError: Colors.white,
      surface: AppColors.honeydew,
      onSurface: AppColors.fenceGreen,
      surfaceContainerHighest: AppColors.caribbeanGreen,
      onSurfaceVariant: AppColors.voidGreen,
      outline: AppColors.fenceGreen,
      outlineVariant: AppColors.lightGreen,
      inverseSurface: AppColors.voidGreen,
      inversePrimary: AppColors.caribbeanGreen,
      shadow: AppColors.cyprus,
      scrim: AppColors.voidGreen,
      primaryContainer: AppColors.honeydew
    ),
    textTheme: lightTextTheme,
    scaffoldBackgroundColor: AppColors.honeydew,
    appBarTheme: const AppBarTheme(elevation: 0, centerTitle: true),
    cardTheme: CardThemeData(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 2,
        backgroundColor: AppColors.caribbeanGreen,
        foregroundColor: AppColors.fenceGreen,
        textStyle: lightTextTheme.displayLarge,
        fixedSize: const Size(207, 45),
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
    ),
  );

  static ThemeData get darkTheme => ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.dark,
      seedColor: AppColors.caribbeanGreen,
      primary: AppColors.voidGreen,
      onPrimary: AppColors.honeydew,
      secondary: AppColors.darkGray,
      onSecondary: AppColors.lightGreen,
      tertiary: AppColors.lightGreen,
      onTertiary: AppColors.honeydew,
      error: Colors.red.shade200, // Softer error for dark mode
      onError: Colors.black,
      surface: AppColors.voidGreen,
      onSurface: AppColors.honeydew,
      surfaceContainerHighest: AppColors.cyprus,
      onSurfaceVariant: AppColors.caribbeanGreen,
      outline: AppColors.lightGreen,
      outlineVariant: AppColors.caribbeanGreen,
      inverseSurface: AppColors.honeydew,
      inversePrimary: AppColors.caribbeanGreen,
      shadow: Colors.black,
      scrim: Colors.black54,
      primaryContainer: AppColors.fenceGreen,
    ),
    appBarTheme: const AppBarTheme(
      elevation: 0,
      centerTitle: true,
      backgroundColor: Colors.green,
    ),
    textTheme: darkTextTheme,
    scaffoldBackgroundColor: AppColors.voidGreen,
    cardTheme: CardThemeData(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 2,
        backgroundColor: AppColors.caribbeanGreen,
        foregroundColor: AppColors.fenceGreen,
        textStyle: darkTextTheme.displayLarge,
        fixedSize: const Size(207, 45),
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
    ),
  );

  // Method to get the appropriate theme based on current selection
  static ThemeData getTheme(BuildContext context) {
    switch (_currentTheme) {
      case light:
        return lightTheme;
      case dark:
        return darkTheme;
      case system:
        // Use system brightness to determine theme
        final brightness = MediaQuery.of(context).platformBrightness;
        return brightness == Brightness.dark ? darkTheme : lightTheme;
      default:
        return lightTheme;
    }
  }

  // Method to get theme mode for MaterialApp
  static ThemeMode get themeMode {
    switch (_currentTheme) {
      case light:
        return ThemeMode.light;
      case dark:
        return ThemeMode.dark;
      case system:
        return ThemeMode.system;
      default:
        return ThemeMode.light;
    }
  }

  // Utility method to get theme name for display
  static String get themeName {
    switch (_currentTheme) {
      case light:
        return 'Light';
      case dark:
        return 'Dark';
      case system:
        return 'System';
      default:
        return 'Light';
    }
  }

  // Method to check if current theme is dark (including system dark)
  static bool isDark(BuildContext context) {
    if (_currentTheme == dark) return true;
    if (_currentTheme == light) return false;
    // For system mode, check actual brightness
    return MediaQuery.of(context).platformBrightness == Brightness.dark;
  }
}
