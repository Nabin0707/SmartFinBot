import 'package:flutter/material.dart';
import 'package:flutterthemetest/tools/tools.dart';
import 'package:flutterthemetest/view/components/button.dart';
import 'package:flutterthemetest/view/components/input.dart';
import 'package:flutterthemetest/view/components/linklabel.dart';
import 'package:flutterthemetest/view/features/login/presentation/widgets/input_label_widget.dart';
import 'package:go_router/go_router.dart';

class BottomContainerLogin extends StatelessWidget {
  const BottomContainerLogin({super.key, required this.children});
  final Widget children;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 745.0.sp(context),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(60.0.sp(context)),
          topRight: Radius.circular(60.0.sp(context)),
        ),
      ),
      padding: EdgeInsets.only(
        top: 90.0.sp(context),
        left: 36.0.sp(context),
        right: 36.0.sp(context),
      ),
      // You need to provide a child widget here. Replace 'Bottom_column()' or any other widget as needed.
      child: children,
    );
  }
}

class BottomColumn extends StatefulWidget {
  const BottomColumn({super.key});

  @override
  BottomColumnState createState() => BottomColumnState();
}

class BottomColumnState extends State<BottomColumn> {
  bool isvisible = true;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        buildInputLabel(context, LoginConstants.emailLabel),
        SizedBox(height: 8.0.sp(context)),
        customInputField(
          context,
          label: LoginConstants.emailLabel,
          controller: TextEditingController(),
        ),
        SizedBox(height: 23.0.sp(context)),
        buildInputLabel(context, LoginConstants.passwordLabel),
        SizedBox(height: 8.0.sp(context)),
        customInputField(
          context,
          label: LoginConstants.passwordLabel,
          controller: passwordController,
          obscureText: isvisible,
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                isvisible = !isvisible;
              });
            },
            icon: Icon(Icons.visibility_off),
          ),
        ),
        SizedBox(height: 91.0.sp(context)),
        buildCustomButton(context, LoginConstants.loginButton, () {
          // Handle login action
          context.go("/login");
        }),
        SizedBox(height: 19.0.sp(context)),
        buildLinkLabel(context, LoginConstants.forgotPasswordText, () {
          // Handle forgot password action
        }),
        SizedBox(height: 28.0.sp(context)),
        Text(
          LoginConstants.orText,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 13.0.sp(context),
            color: Theme.of(context).colorScheme.tertiary,
            fontStyle: Theme.of(context).textTheme.displaySmall?.fontStyle,
          ),
        ),
        SizedBox(height: 19.0.sp(context)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.golf_course),
              style: IconButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.secondary,
                iconSize: 32.0.sp(context),
              ),
              alignment: Alignment.center,
            ),
            SizedBox(width: 16.0.sp(context)),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.facebook),
              style: IconButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.secondary,
                iconSize: 32.0.sp(context),
              ),
              alignment: Alignment.center,
            ),
          ],
        ),
        SizedBox(height: 20.0.sp(context)),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              LoginConstants.registerText,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 13.0.sp(context),
                color: Theme.of(context).colorScheme.tertiary,
                fontStyle: Theme.of(context).textTheme.displaySmall?.fontStyle,
              ),
            ),
            SizedBox(width: 2.0.sp(context)),
            GestureDetector(
              onTap: () {
                // Handle register action
              },
              child: Text(
                LoginConstants.registerButton,
                style: TextStyle(
                  fontSize: 13.0.sp(context),
                  color: AppColors.caribbeanGreen,
                  fontWeight: FontWeight.bold,
                  fontStyle: Theme.of(
                    context,
                  ).textTheme.displaySmall?.fontStyle,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class BottomColumn1 extends StatelessWidget {
  const BottomColumn1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        buildInputLabel(context, LoginConstants.emailLabel),
        SizedBox(height: 8.0.h(context)),
        customInputField(
          context,
          label: LoginConstants.emailLabel,
          controller: TextEditingController(),
        ),
        SizedBox(height: 23.0.h(context)),
        buildInputLabel(context, LoginConstants.passwordLabel),
        SizedBox(height: 8.0.h(context)),
        customInputField(
          context,
          label: LoginConstants.passwordLabel,
          controller: TextEditingController(),
          obscureText: true,
        ),
        SizedBox(height: 91.0.h(context)),
        buildCustomButton(context, LoginConstants.registerButton, () {
          // Handle login action
          context.go("/login");
        }),
        SizedBox(height: 19.0.h(context)),
        buildLinkLabel(context, LoginConstants.forgotPasswordText, () {
          // Handle forgot password action
        }),
        SizedBox(height: 28.0.h(context)),
        Text(
          LoginConstants.orText,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 13.0.sp(context),
            color: Theme.of(context).colorScheme.tertiary,
            fontStyle: Theme.of(context).textTheme.displaySmall?.fontStyle,
          ),
        ),
        SizedBox(height: 19.0.h(context)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.golf_course),
              style: IconButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.secondary,
                iconSize: 32.0.sp(context),
              ),
              alignment: Alignment.center,
            ),
            SizedBox(width: 16.0.w(context)),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.facebook),
              style: IconButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.secondary,
                iconSize: 32.0.sp(context),
              ),
              alignment: Alignment.center,
            ),
          ],
        ),
        SizedBox(height: 20.0.h(context)),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              LoginConstants.registerText,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 13.0.sp(context),
                color: Theme.of(context).colorScheme.tertiary,
                fontStyle: Theme.of(context).textTheme.displaySmall?.fontStyle,
              ),
            ),
            SizedBox(width: 2.0.sp(context)),
            GestureDetector(
              onTap: () {
                // Handle register action
              },
              child: Text(
                LoginConstants.registerButton,
                style: TextStyle(
                  fontSize: 13.0.sp(context),
                  color: AppColors.caribbeanGreen,
                  fontWeight: FontWeight.bold,
                  fontStyle: Theme.of(
                    context,
                  ).textTheme.displaySmall?.fontStyle,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
