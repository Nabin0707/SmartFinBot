import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterthemetest/tools/tools.dart';
import 'package:go_router/go_router.dart';

class Onboarding2 extends StatelessWidget {
  const Onboarding2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // Main Content
            Padding(
              padding: EdgeInsets.all(20.0.sp(context)),
              child: Column(
                children: [
                  SizedBox(
                    height: 60.0.sp(context),
                  ), // Extra space for theme toggle
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // SVG Container - Made responsive
                        Container(
                          width: MediaQuery.of(context).size.width * 0.6,
                          height: MediaQuery.of(context).size.width * 0.6,
                          constraints: BoxConstraints(
                            minWidth: 200.0.sp(context),
                            minHeight: 200.0.sp(context),
                            maxWidth: 300.0.sp(context),
                            maxHeight: 300.0.sp(context),
                          ),
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
                            // Add error handling for SVG
                            placeholderBuilder: (BuildContext context) =>
                                Container(
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
                                    size: 60,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSurface
                                        .withValues(alpha: 0.5),
                                  ),
                                ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.05,
                        ),

                        // Title - Made responsive
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 20.0.sp(context),
                          ),
                          child: Text(
                            'Track and Enjoy',
                            style: Theme.of(context).textTheme.headlineMedium
                                ?.copyWith(
                                  fontSize:
                                      MediaQuery.of(context).size.width <
                                          600.0.sp(context)
                                      ? 24.0.sp(context)
                                      : 28.0.sp(context),
                                  fontWeight: FontWeight.bold,
                                ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),

                        // Description - Made responsive
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 30.0.sp(context),
                          ),
                          child: Text(
                            'This is the second onboarding screen. Get ready to enjoy all the features.',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.bodyLarge
                                ?.copyWith(
                                  fontSize:
                                      MediaQuery.of(context).size.width <
                                          600.0.sp(context)
                                      ? 16.0.sp(context)
                                      : 18.0.sp(context),
                                  height: 1.5,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Get Started Button - Made responsive
                  Container(
                    width: double.infinity,
                    constraints: BoxConstraints(maxWidth: 300.0.sp(context)),
                    child: ElevatedButton(
                      onPressed: () {
                        context.go('/');
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          vertical: 16.0.sp(context),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0.sp(context)),
                        ),
                        backgroundColor: Theme.of(context).colorScheme.primary,
                        foregroundColor: Theme.of(
                          context,
                        ).colorScheme.onPrimary,
                      ),
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                          fontSize:
                              MediaQuery.of(context).size.width <
                                  600.0.sp(context)
                              ? 16.0.sp(context)
                              : 18.0.sp(context),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0.sp(context)),
                ],
              ),
            ),

            // Theme Toggle Button - Using your AnimatedThemeSwitch
            Padding(
              padding: EdgeInsets.all(16.0.sp(context)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [AnimatedThemeSwitch()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
