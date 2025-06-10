import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterthemetest/tools/tools.dart';
import 'package:flutterthemetest/view/components/button.dart';
import 'package:go_router/go_router.dart';

class Onboarding2 extends StatelessWidget {
  const Onboarding2({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                // Top Green Arc
                Container(
                  height: size.height * 0.4,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(60),
                      bottomRight: Radius.circular(60),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 16,
                        right: 16,
                        child: AnimatedThemeSwitch(),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 50.0),
                          child: Text(
                            'Are You Ready To\nTake Control Of Your Finances?',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.headlineMedium
                                ?.copyWith(
                                  color: Theme.of(
                                    context,
                                  ).colorScheme.onPrimary,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // SVG & Description
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/svgs/loginanalytics', // Update to match the smartphone illustration
                        height: size.width * 0.5,
                      ),
                      const SizedBox(height: 30),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Text(
                          'Take charge of your financial future with our intuitive app.',
                          textAlign: TextAlign.center,
                          style: Theme.of(
                            context,
                          ).textTheme.bodyLarge?.copyWith(height: 1.5),
                        ),
                      ),
                    ],
                  ),
                ),
                // Next Button + Dots
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.circle, size: 10, color: Colors.grey),
                          SizedBox(width: 8),
                          Icon(Icons.circle, size: 10, color: Colors.grey),
                        ],
                      ),
                      const SizedBox(height: 12),
                      SizedBox(
                        width: 200,
                        child: buildCustomButton(
                          context,
                          'Next',
                          () => context.go(
                            '/onboarding3',
                          ), // Adjust navigation as needed
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
