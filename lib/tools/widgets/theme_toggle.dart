import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutterthemetest/tools/theme/themeprovider.dart';

class ThemeToggle extends ConsumerWidget {
  final bool showLabels;
  final double? iconSize;
  final EdgeInsetsGeometry? padding;

  const ThemeToggle({
    super.key,
    this.showLabels = false,
    this.iconSize,
    this.padding,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeType = ref.watch(themeNotifierProvider);
    final themeNotifier = ref.read(themeNotifierProvider.notifier);

    return Container(
      padding: padding ?? const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Theme.of(context).colorScheme.surface.withValues(alpha: 0.8),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (showLabels) ...[
            Text(
              'Theme: ',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(width: 8),
          ],
          GestureDetector(
            onTap: () => themeNotifier.toggleLightDark(),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: themeType == ThemeType.light
                    ? Theme.of(context).colorScheme.primary
                    : Theme.of(context).colorScheme.surface,
                border: Border.all(
                  color: Theme.of(context).colorScheme.outline,
                  width: 1,
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    themeType == ThemeType.dark
                        ? Icons.dark_mode
                        : Icons.light_mode,
                    size: iconSize ?? 20,
                    color: themeType == ThemeType.light
                        ? Theme.of(context).colorScheme.onPrimary
                        : Theme.of(context).colorScheme.onSurface,
                  ),
                  if (showLabels) ...[
                    const SizedBox(width: 6),
                    Text(
                      themeType == ThemeType.light ? 'Light' : 'Dark',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: themeType == ThemeType.light
                                ? Theme.of(context).colorScheme.onPrimary
                                : Theme.of(context).colorScheme.onSurface,
                          ),
                    ),
                  ],
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AnimatedThemeSwitch extends ConsumerWidget {
  final double width;
  final double height;

  const AnimatedThemeSwitch({
    super.key,
    this.width = 60,
    this.height = 30,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeType = ref.watch(themeNotifierProvider);
    final themeNotifier = ref.read(themeNotifierProvider.notifier);
    final isDark = themeType == ThemeType.dark;

    return GestureDetector(
      onTap: () => themeNotifier.toggleLightDark(),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(height / 2),
          color: isDark 
              ? Theme.of(context).colorScheme.primary
              : Theme.of(context).colorScheme.outline.withAlpha(30),
        ),
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              top: 2,
              left: isDark ? width - height + 2 : 2,
              child: Container(
                width: height - 4,
                height: height - 4,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isDark
                      ? Theme.of(context).colorScheme.onPrimary
                      : Theme.of(context).colorScheme.surface,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withAlpha(20),
                      blurRadius: 4,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Icon(
                  isDark ? Icons.dark_mode : Icons.light_mode,
                  size: 16,
                  color: isDark
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.onSurface,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
