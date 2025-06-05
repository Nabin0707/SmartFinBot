import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterthemetest/tools/constants/color.dart';
import 'package:flutterthemetest/tools/constants/constants.dart';
import 'package:flutterthemetest/tools/widgets/theme_toggle.dart';
import 'package:flutterthemetest/view/components/button.dart';
import 'package:flutterthemetest/view/components/linklabel.dart';
import 'package:flutterthemetest/tools/extensions/size_extension.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginStartPage extends ConsumerWidget {
  const LoginStartPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SafeArea(
        child: Column(
          children: [
            // Theme toggle in top right corner
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [AnimatedThemeSwitch()],
              ),
            ),
            // Main content
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      IconAssets.loginAnalytics,
                      width: 100.0.w(context),
                      height: 100.0.h(context),
                    ),
                    SizedBox(height: 12.22.h(context)),
                    SizedBox(
                      width: 327.0.w(context),
                      child: Text(
                        AppConstants.appName,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 52.0.sp(context),
                          color: AppColors.caribbeanGreen,
                          height: 1.35,
                          fontStyle: Theme.of(
                            context,
                          ).textTheme.displayMedium?.fontStyle,
                        ),
                      ),
                    ),
                    SizedBox(height: 3.0.h(context)),
                    SizedBox(
                      width: 236.0.w(context),

                      child: Text(
                        TextConstants.welcomeText,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14.0.sp(context),
                          color: Theme.of(context).colorScheme.onSecondary,
                          fontWeight: FontWeight.w500,
                          fontFamily: GoogleFonts.leagueSpartan().fontFamily,
                          height: 1.35,
                        ),
                      ),
                    ),
                    SizedBox(height: 42.0.h(context)),
                    buildCustomButton(context, LoginConstants.loginButton, () {
                      // Handle login action
                      context.push("/login");
                    }),
                    SizedBox(height: 12.0.h(context)),
                    buildCustomButton(
                      context,
                      LoginConstants.registerButton,
                      () {
                        // Handle register action
                      },
                      secondary: true,
                    ),
                    SizedBox(height: 12.0.h(context)),
                    buildLinkLabel(
                      context,
                      LoginConstants.forgotPasswordText,
                      () {
                        // Handle forgot password action
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
