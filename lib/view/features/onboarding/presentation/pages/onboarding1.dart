import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterthemetest/tools/tools.dart';
import 'package:flutterthemetest/view/components/bottom_curved_clipper.dart';
import 'package:go_router/go_router.dart';

class Onboarding1 extends StatelessWidget {
  const Onboarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // Curved Background
            ClipPath(
              clipper: BottomCurvedClipper(),
              child: Container(
                height: 300.0.h(context),
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            // Main Content
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0.w(context)),
              child: Column(
                children: [
                  SizedBox(height: 80.0.h(context)),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/svgs/loginanalytics', // Update to match the coins illustration
                          height: 200.0.h(context),
                        ),
                        SizedBox(height: 40.0.h(context)),
                        Text(
                          'Welcome To Expense Manager',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.headlineMedium
                              ?.copyWith(
                                fontSize: 24.0.sp(context),
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        SizedBox(height: 20.0.h(context)),
                        Text(
                          'Manage your expenses with ease and efficiency.',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.bodyLarge
                              ?.copyWith(
                                fontSize: 16.0.sp(context),
                                height: 1.5,
                              ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 200.0.w(context),
                    child: ElevatedButton(
                      onPressed: () => context.go('/onboarding2'),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          vertical: 14.0.h(context),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0.sp(context)),
                        ),
                      ),
                      child: Text(
                        'Next',
                        style: TextStyle(
                          fontSize: 18.0.sp(context),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30.0.h(context)),
                ],
              ),
            ),
            // Theme Toggle Button
            Positioned(
              top: 16.0.h(context),
              right: 16.0.w(context),
              child: AnimatedThemeSwitch(),
            ),
          ],
        ),
      ),
    );
  }
}
