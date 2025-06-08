import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterthemetest/tools/tools.dart';
import 'package:flutterthemetest/tools/widgets/theme_toggle.dart';
import 'package:go_router/go_router.dart';

class Onboarding2 extends StatelessWidget {
  const Onboarding2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // Content
            Padding(
              padding: EdgeInsets.all(20.0.sp(context)),
              child: Column(
                children: [
                  SizedBox(height: 50.0.sp(context)),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          IconAssets.onboarding2,
                          width: 100.0.w(context),
                          height: 100.0.h(context),
                        ),
                        SizedBox(height: 30.0.sp(context)),
                        Text(
                          'Track and Enjoy',
                          style: Theme.of(context).textTheme.headlineMedium,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10.0.sp(context)),
                        Text(
                          'This is the second onboarding screen. Get ready to enjoy all the features.',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      context.go('/');
                    },
                    child: const Text('Get Started'),
                  ),
                  SizedBox(height: 20.0.sp(context)),
                ],
              ),
            ),

            // Theme Toggle on Top Right
            Positioned(
              top: 10.0.sp(context),
              right: 10.0.sp(context),
              child: ThemeToggle(),
            ),
          ],
        ),
      ),
    );
  }
}
