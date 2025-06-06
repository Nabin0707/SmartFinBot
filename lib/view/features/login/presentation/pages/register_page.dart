import 'package:flutter/material.dart';
import 'package:flutterthemetest/tools/tools.dart';
import 'package:flutterthemetest/view/features/login/presentation/widgets/bottom_container_login_widget.dart';
import 'package:flutterthemetest/view/features/login/presentation/widgets/register_bottom.dart';
//import 'package:flutterthemetest/view/features/login/presentation/widgets/login_bottom.dart';
//import 'package:go_router/go_router.dart';
//import 'package:flutterthemetest/tools/extensions/size_extension.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: SafeArea(
        child: Column(
          children: [
             Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [AnimatedThemeSwitch()],
              ),
            ),
            // Top Container - Fixed size
            Container(
              height: 160.0.h(context),
              width: double.infinity,
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                'Welcome to ${AppConstants.appName}',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0.sp(context),
                  color: Theme.of(context).colorScheme.tertiary,
                  fontStyle:
                      Theme.of(context).textTheme.displayMedium?.fontStyle ??
                      FontStyle.normal,
                ),
              ),
            ),

            // Bottom Container - Takes remaining space and scrollable
            Expanded(
              child: SingleChildScrollView(
                child: BottomContainerLogin(children: RegisterBottom()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
