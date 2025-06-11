import 'package:flutter/material.dart';
import 'package:flutterthemetest/tools/tools.dart';
import 'package:flutterthemetest/view/features/login/presentation/widgets/bottom_sheet_onboarding1_widget.dart';
import 'package:go_router/go_router.dart';

class OnboardingPage1 extends StatelessWidget {
  const OnboardingPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: LayoutBuilder(
        builder: (context, constraints) {
          return GestureDetector(
            onHorizontalDragEnd: (details) {
              if (details.primaryVelocity! < 0) {
                context.push("/2"); // Slide left to go to page 2
              }
            },
            child: SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: IntrinsicHeight(
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          /// Top Section (Text)
                          Padding(
                            padding: EdgeInsets.only(
                              top: 100.0.sp(context),
                              left: 20.0.sp(context),
                              right: 20.0.sp(context),
                            ),
                            child: Center(
                              child: Text(
                                'Welcome To \nExpense Manager',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 30.0.sp(context),
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).colorScheme.tertiary,
                                ),
                              ),
                            ),
                          ),

                          const Spacer(),

                          /// Bottom Sheet Widget (Image + Controls)
                          const BottomSheetOnboarding1Widget(),
                        ],
                      ),
                      Positioned(
                        top: 16,
                        right: 16,
                        child: AnimatedThemeSwitch(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
