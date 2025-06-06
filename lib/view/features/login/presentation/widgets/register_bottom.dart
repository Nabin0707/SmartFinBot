import 'package:flutter/material.dart';
import 'package:flutterthemetest/tools/constants/color.dart';
import 'package:flutterthemetest/tools/constants/constants.dart';
import 'package:flutterthemetest/tools/extensions/size_extension.dart';
import 'package:flutterthemetest/tools/functions.dart';
import 'package:flutterthemetest/view/components/button.dart';
import 'package:flutterthemetest/view/components/input.dart';
import 'package:flutterthemetest/view/components/linklabel.dart';
import 'package:flutterthemetest/view/features/login/presentation/widgets/input_label_widget.dart';
import 'package:go_router/go_router.dart';

class RegisterBottom extends StatefulWidget {
  const RegisterBottom({super.key});

  @override
  RegisterBottomState createState() => RegisterBottomState();
}

class RegisterBottomState extends State<RegisterBottom> {
  bool isPasswordVisible = true;
  bool isConfirmPasswordVisible = true;

  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController dateOfBirthController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  void dispose() {
    fullNameController.dispose();
    emailController.dispose();
    mobileController.dispose();
    dateOfBirthController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  Widget buildStyledInputField(
    BuildContext context, {
    required String label,
    required TextEditingController controller,
    String? placeholder,
    bool obscureText = false,
    Widget? suffixIcon,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFD9E6C3), // Light green background
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: customInputField(
        context,
        label: label,
        controller: controller,
        hintText: placeholder,
        obscureText: obscureText,
        suffixIcon: suffixIcon,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        // Full Name Field
        buildInputLabel(context, "Full Name"),
        SizedBox(height: 8.0.sp(context)),
        buildStyledInputField(
          context,
          label: "Full Name",
          controller: fullNameController,
        ),
        SizedBox(height: 23.0.sp(context)),

        // Email Field
        buildInputLabel(context, LoginConstants.emailLabel),
        SizedBox(height: 8.0.sp(context)),
        buildStyledInputField(
          context,
          label: LoginConstants.emailLabel,
          controller: emailController,
          placeholder: 'example@example.com',
        ),
        SizedBox(height: 23.0.sp(context)),

        // Mobile Number Field
        buildInputLabel(context, "Mobile Number"),
        SizedBox(height: 8.0.sp(context)),
        buildStyledInputField(
          context,
          label: "Mobile Number",
          controller: mobileController,
          placeholder: '+977-9876543210',
        ),
        SizedBox(height: 23.0.sp(context)),

        // Date of Birth Field
        buildInputLabel(context, "Date of Birth"),
        SizedBox(height: 8.0.sp(context)),
        buildStyledInputField(
          context,
          label: "Date of Birth",
          controller: dateOfBirthController,
          placeholder: 'DD/MM/YYYY',
        ),
        SizedBox(height: 23.0.sp(context)),

        // Password Field
        buildInputLabel(context, LoginConstants.passwordLabel),
        SizedBox(height: 8.0.sp(context)),
        buildStyledInputField(
          context,
          label: LoginConstants.passwordLabel,
          controller: passwordController,
          obscureText: isPasswordVisible,
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                isPasswordVisible = !isPasswordVisible;
              });
            },
            icon: Icon(
              isPasswordVisible ? Icons.visibility_off : Icons.visibility,
            ),
          ),
        ),
        SizedBox(height: 23.0.sp(context)),

        // Confirm Password Field
        buildInputLabel(context, "Confirm Password"),
        SizedBox(height: 8.0.sp(context)),
        buildStyledInputField(
          context,
          label: "Confirm Password",
          controller: confirmPasswordController,
          obscureText: isConfirmPasswordVisible,
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                isConfirmPasswordVisible = !isConfirmPasswordVisible;
              });
            },
            icon: Icon(
              isConfirmPasswordVisible
                  ? Icons.visibility_off
                  : Icons.visibility,
            ),
          ),
        ),
        SizedBox(height: 91.0.sp(context)),
        TermsAndConditions(),
        SizedBox(height: 10.0.sp(context)),

        // Register Button (changed from login)
        buildCustomButton(context, LoginConstants.registerButton, () {
          // Handle register action
          // Add validation logic here
          if (passwordController.text != confirmPasswordController.text) {
            // Show error message for password mismatch
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text('Passwords do not match')));
            return;
          }
          // Process registration
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
              "Already have an account?",
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
                // Navigate to login
                context.go("/login");
              },
              child: Text(
                "Login",
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

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("By continuing, you agree to "),
        InkWell(
          onTap: () {
            // Handle privacy policy action
            openExternalUrl("https://www.nabinghimire23.com.np");
          },
          child: Text(
            " Terms of Use",
            style: TextStyle(
              color: AppColors.caribbeanGreen,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        SizedBox(height: 10.0.sp(context)),
        Text(" and"),
        InkWell(
          onTap: () {
            // Handle privacy policy action
            openExternalUrl("https://www.nabinghimire23.com.np");
          },
          child: Text(
            " Privacy Policy",
            style: TextStyle(
              color: AppColors.caribbeanGreen,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
