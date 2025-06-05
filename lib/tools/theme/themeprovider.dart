import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum ThemeType { light, dark, system }

class ThemeNotifier extends StateNotifier<ThemeType> {
  ThemeNotifier() : super(ThemeType.light);

  void setTheme(ThemeType theme) {
    state = theme;
  }

  void toggleLightDark() {
    if (state == ThemeType.light) {
      state = ThemeType.dark;
    } else {
      state = ThemeType.light;
    }
  }

  // Optional: cycle through all three themes
  void toggleTheme() {
    switch (state) {
      case ThemeType.light:
        state = ThemeType.dark;
        break;
      case ThemeType.dark:
        state = ThemeType.system;
        break;
      case ThemeType.system:
        state = ThemeType.light;
        break;
    }
  }

  ThemeMode get themeMode {
    switch (state) {
      case ThemeType.light:
        return ThemeMode.light;
      case ThemeType.dark:
        return ThemeMode.dark;
      case ThemeType.system:
        return ThemeMode.system;
    }
  }
}

// Provider to expose ThemeNotifier
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, ThemeType>((ref) {
  return ThemeNotifier();
});
