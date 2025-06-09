import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterthemetest/tools/tools.dart';

class Onboarding1 extends StatelessWidget {
  const Onboarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // Main Content
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const SizedBox(height: 60), // Extra space for theme toggle
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // SVG Container - Made responsive
                        Container(
                          width: MediaQuery.of(context).size.width * 0.6,
                          height: MediaQuery.of(context).size.width * 0.6,
                          constraints: const BoxConstraints(
                            minWidth: 200,
                            minHeight: 200,
                            maxWidth: 300,
                            maxHeight: 300,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Theme.of(context).colorScheme.primaryContainer,
                          ),
                          padding: const EdgeInsets.all(20),
                          child: SvgPicture.asset(
                            IconAssets.onboarding1,
                            fit: BoxFit.contain,
                            // Add error handling for SVG
                            placeholderBuilder: (BuildContext context) => Container(
                              decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.surface,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Icon(
                                Icons.image_outlined,
                                size: 60,
                                color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.5),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                        
                        // Title - Made responsive
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            'Welcome to Your App',
                            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                              fontSize: MediaQuery.of(context).size.width < 600 ? 24 : 28,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                        
                        // Description - Made responsive
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Text(
                            'This is the first onboarding screen. Learn how to use the app step-by-step.',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              fontSize: MediaQuery.of(context).size.width < 600 ? 16 : 18,
                              height: 1.5,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                  // Next Button - Made responsive
                  Container(
                    width: double.infinity,
                    constraints: const BoxConstraints(maxWidth: 300),
                    child: ElevatedButton(
                      onPressed: () {
                        context.go('/onboarding2');
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Text(
                        'Next',
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width < 600 ? 16 : 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
            
            // Theme Toggle Button - Using your provided code
            Padding(
              padding: const EdgeInsets.all(16.0),
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