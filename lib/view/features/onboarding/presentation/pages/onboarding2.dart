import 'package:flutter/material.dart';
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
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const SizedBox(height: 50),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/illustrations/onboard2.svg',
                          height: 250,
                        ),
                        const SizedBox(height: 30),
                        Text(
                          'Track and Enjoy',
                          style: Theme.of(context).textTheme.headlineMedium,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 10),
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
                      context.go('/login');
                    },
                    child: const Text('Get Started'),
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
