import 'package:flutter/material.dart';

// Define Routes
import 'package:flutter_app/views/login.dart';
import 'package:flutter_app/views/register.dart';
import 'package:flutter_app/views/forgot_password.dart';

// Route Names
const String loginPage = 'login';
const String registerPage = 'register';
const String forgotPasswordPage = 'forgotPassword';

// Control our page route flow
Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case loginPage:
      return MaterialPageRoute(builder: (context) => const LoginPage());
    case registerPage:
      return MaterialPageRoute(builder: (context) => const RegisterPage());
    case forgotPasswordPage:
      return MaterialPageRoute(
          builder: (context) => const ForgotPasswordPage());
    default:
      throw ('This route name does not exit');
  }
}
