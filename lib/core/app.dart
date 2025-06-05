import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutterthemetest/core/router.dart';
import 'package:flutterthemetest/tools/theme/theme.dart';
import 'package:flutterthemetest/tools/theme/themeprovider.dart';
import 'package:flutterthemetest/tools/tools.dart';

class SmartFinBot extends ConsumerWidget {
  const SmartFinBot({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeType = ref.watch(themeNotifierProvider);

    // Convert ThemeType to ThemeMode
    ThemeMode themeMode;
    switch (themeType) {
      case ThemeType.light:
        themeMode = ThemeMode.light;
        break;
      case ThemeType.dark:
        themeMode = ThemeMode.dark;
        break;
      default:
        themeMode = ThemeMode.system;
    }

    WidgetsFlutterBinding.ensureInitialized();

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: AppColors.lightGreen, // Use any of your theme colors
        statusBarIconBrightness:
            Brightness.light, // Light icons for dark background
        statusBarBrightness: Brightness.dark, // For iOS
      ),
    );

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Smart Fin Bot',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: themeMode,
      routerConfig: routes,
      locale: const Locale('en', 'US'),
    );
  }
}
