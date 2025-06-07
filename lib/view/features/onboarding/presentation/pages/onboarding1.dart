import 'package:flutter/material.dart';
import 'package:flutterthemetest/tools/widgets/theme_toggle.dart';
//import 'package:flutterthemetest/view/features/onboarding/presentation/pages/onboarding2.dart';
import 'package:go_router/go_router.dart';

class Onboarding1 extends StatelessWidget {
  const Onboarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // Content
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const SizedBox(height: 50),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/illustrations/onboard1.svg',
                          height: 250,
                        ),
                        const SizedBox(height: 30),
                        Text(
                          'Welcome to Your App',
                          style: Theme.of(context).textTheme.headlineMedium,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'This is the first onboarding screen. Learn how to use the app step-by-step.',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      context.go('/onboarding2');
                    },
                    child: const Text('Next'),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),

            // Theme Toggle on Top Right
            Positioned(top: 10, right: 10, child: ThemeToggle()),
          ],
        ),
      ),
    );
  }
}
