class TextConstants {
  static const String defaultText =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";
  static const String welcomeText =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit";
}

class LoginConstants {
  static const String loginTitle = "Welcome Back!";
  static const String forgotPasswordText = "Forgot your password?";
  static const String loginSubtitle =
      "Please enter your credentials to continue.";
  static const String emailLabel = "Email Address";
  static const String passwordLabel = "Password";
  static const String rememberMeLabel = "Remember Me";
  static const String loginButton = "Log In";
  static const String registerButton = "Sign Up";
  static const String forgotPasswordButton = "Forgot Password";
  static const String orText = "or sign up with";
static const String registerText = "Don't have an account?";

  static const String resetPasswordButton = "Reset Password";
  static const String emailPlaceholder = "example@example.com"; 
  static const String passwordPlaceholder = "Enter your password";

  static const String namePlaceholder = "Jhon Doe";
   static const String nameLabel = "Full Name";

  static const String phonePlaceholder = "+1 234 567 8900";
  static const String phoneLabel = "Phone Number";

  static const String addressLabel = "Address";

  static const String dobLabel = "Date of Birth";
  static const String dobPlaceholder = "Select your date of birth";

  static const String addressPlaceholder = "Enter your address";
  static const String emailRequired = "Email is required.";
  static const String nameRequired = "Name is required.";
  static const String phoneRequired = "Phone number is required.";
  static const String addressRequired = "Address is required.";


  static const String passwordRequired = "Password is required.";
  static const String invalidEmail = "Please enter a valid email address.";
  static const String passwordTooShort =
      "Password must be at least 6 characters long.";
  static const String passwordsDoNotMatch = "Passwords do not match.";
  static const String fieldRequired = "This field is required.";
}

class AppConstants {
  static const String appName = "SmartFinBot";
  static const int defaultTimeout = 5000; // in milliseconds
  static const String defaultLanguage = "en";
  static const String version = "1.0.0";
  static const String supportEmail = "support@example.com";
  static const String copyrightText =
      "© 2023 SmartFinBot. All rights reserved.";
}

class ApiEndpoints {
  static const String baseUrl = "https://api.example.com";
  static const String login = "$baseUrl/login";
  static const String register = "$baseUrl/register";
  static const String resetPassword = "$baseUrl/reset-password";
  static const String fetchData = "$baseUrl/data";
  static const String updateProfile = "$baseUrl/update-profile";
  static const String deleteAccount = "$baseUrl/delete-account";
}

class ErrorMessages {
  static const String networkError = "Network error. Please try again later.";
  static const String serverError = "Server error. Please try again later.";
  static const String unauthorized = "Unauthorized access. Please log in.";
  static const String notFound = "Resource not found.";
  static const String validationError =
      "Validation error. Please check your input.";
  static const String unknownError =
      "An unknown error occurred. Please try again.";
}

class SuccessMessages {
  static const String loginSuccess = "Login successful!";
  static const String registrationSuccess = "Registration successful!";
  static const String passwordResetSuccess = "Password reset successful!";
  static const String profileUpdated = "Profile updated successfully!";
  static const String accountDeleted = "Account deleted successfully!";
  static const String dataFetched = "Data fetched successfully!";
}

class ValidationMessages {
  static const String emailRequired = "Email is required.";
  static const String passwordRequired = "Password is required.";
  static const String invalidEmail = "Please enter a valid email address.";
  static const String passwordTooShort =
      "Password must be at least 6 characters long.";
  static const String passwordsDoNotMatch = "Passwords do not match.";
  static const String fieldRequired = "This field is required.";
}

class IconAssets {
  static const String loginAnalytics = "lib/assets/svgs/loginanalytics.svg";
  static const String onboarding1 = "lib/assets/pngs/onboarding1.png";
  static const String onboarding2 = "lib/assets/pngs/onboarding2.png";
  static const String next1 = "lib/assets/svgs/next1.svg";
  static const String next2 = "lib/assets/svgs/next2.svg";
  static const String google = "lib/assets/svgs/google.svg";
  static const String facebook = "lib/assets/svgs/facebook.svg";
  static const String eye = "lib/assets/svgs/eye.svg";
}
