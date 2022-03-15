import 'package:flutter/material.dart';

// Define Routes
import 'package:flutter_app/views/sign_in.dart';

// Route Names
const String loginPage = 'login';

// Control our page route flow
Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case loginPage:
      return MaterialPageRoute(builder: (context) => const LoginPage());
    default:
      throw ('This route name does not exit');
  }
}
