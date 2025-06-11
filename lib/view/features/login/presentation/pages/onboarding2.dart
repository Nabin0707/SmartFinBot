import 'package:flutter/material.dart';
import 'package:flutterthemetest/tools/tools.dart';
import 'package:flutterthemetest/view/components/button_arrow.dart';
import 'package:go_router/go_router.dart';

class Onboarding2 extends StatelessWidget {
  const Onboarding2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: IntrinsicHeight(
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          // Top Green Arc
                          Container(
                            height: constraints.maxHeight * 0.4,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.primary,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(60.0.sp(context)),
                                bottomRight: Radius.circular(60.0.sp(context)),
                              ),
                            ),
                            child: Center(
                              child: Padding(
                                padding: EdgeInsets.only(
                                  top: 50.0.sp(context),
                                  left: 20.0.sp(context),
                                  right: 20.0.sp(context),
                                ),
                                child: Text(
                                  'Are You Ready To\nTake Control Of Your Finances?',
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineMedium
                                      ?.copyWith(
                                        color: Theme.of(
                                          context,
                                        ).colorScheme.onPrimary,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22.0.sp(context),
                                      ),
                                ),
                              ),
                            ),
                          ),
                          // SVG & Description
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  IconAssets.onboarding2,
                                  width: 287.0.sp(context),
                                  height: 287.0.sp(context),
                                  fit: BoxFit.contain,
                                ),
                                SizedBox(height: 30.0.sp(context)),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 30.0.sp(context),
                                  ),
                                  child: Text(
                                    'Take charge of your financial future with our intuitive app.',
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context).textTheme.bodyLarge
                                        ?.copyWith(height: 1.5),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Next Button + Dots
                          Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 20.0.sp(context),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.circle,
                                      size: 10.0.sp(context),
                                      color: Colors.grey,
                                    ),
                                    SizedBox(width: 8.0.sp(context)),
                                    Icon(
                                      Icons.circle,
                                      size: 10.0.sp(context),
                                      color: Colors.grey,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 12.0.sp(context)),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 20.0.w(context),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      // ← Previous Button
                                      buildArrowButton(
                                        context,
                                        'Previous',
                                        () => context.go('/onboarding1'),
                                        isForward: false,
                                      ),

                                      // → Get Started Button
                                      buildArrowButton(
                                        context,
                                        'Get Started',
                                        () => context.go('/'),
                                        isForward: true,
                                        secondary:
                                            true, // Optional if you want the green color
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        top: 16.0.sp(context),
                        right: 16.0.sp(context),
                        child: AnimatedThemeSwitch(),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
