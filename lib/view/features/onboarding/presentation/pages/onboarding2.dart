import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterthemetest/tools/tools.dart';
import 'package:go_router/go_router.dart';
import 'dart:math';

class Onboarding2 extends StatelessWidget {
  const Onboarding2({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            double svgSize = min(width * 0.6, 300.0.sp(context));
            double titleFontSize = width < 600
                ? 24.0.sp(context)
                : 28.0.sp(context);
            double descFontSize = width < 600
                ? 16.0.sp(context)
                : 18.0.sp(context);
            double buttonFontSize = descFontSize;

            return Stack(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.06),
                  child: Column(
                    children: [
                      SizedBox(height: height * 0.08), // Extra space for toggle
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // SVG Container
                            Container(
                              width: svgSize,
                              height: svgSize,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  20.0.sp(context),
                                ),
                                color: Theme.of(
                                  context,
                                ).colorScheme.secondaryContainer,
                              ),
                              padding: EdgeInsets.all(20.0.sp(context)),
                              child: SvgPicture.asset(
                                IconAssets.onboarding2,
                                fit: BoxFit.contain,
                                placeholderBuilder: (context) => Container(
                                  decoration: BoxDecoration(
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.surface,
                                    borderRadius: BorderRadius.circular(
                                      10.0.sp(context),
                                    ),
                                  ),
                                  child: Icon(
                                    Icons.track_changes_outlined,
                                    size: svgSize * 0.3,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSurface
                                        .withValues(alpha: 0.5),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: height * 0.05),

                            // Title
                            Text(
                              'Track and Enjoy',
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.headlineMedium
                                  ?.copyWith(
                                    fontSize: titleFontSize,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            SizedBox(height: height * 0.02),

                            // Description
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: width * 0.08,
                              ),
                              child: Text(
                                'This is the second onboarding screen. Get ready to enjoy all the features.',
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.bodyLarge
                                    ?.copyWith(
                                      fontSize: descFontSize,
                                      height: 1.5,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Get Started Button
                      SizedBox(
                        width: double.infinity,
                        child: ConstrainedBox(
                          constraints: BoxConstraints(maxWidth: 360),
                          child: ElevatedButton(
                            onPressed: () => context.go('/'),
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                vertical: height * 0.02,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                  12.0.sp(context),
                                ),
                              ),
                              backgroundColor: Theme.of(
                                context,
                              ).colorScheme.primary,
                              foregroundColor: Theme.of(
                                context,
                              ).colorScheme.onPrimary,
                            ),
                            child: Text(
                              'Get Started',
                              style: TextStyle(
                                fontSize: buttonFontSize,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: height * 0.03),
                    ],
                  ),
                ),

                // Theme Toggle
                Positioned(
                  top: 16.0.sp(context),
                  right: 16.0.sp(context),
                  child: const AnimatedThemeSwitch(),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
