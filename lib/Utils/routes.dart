import 'package:flutter/material.dart';
import 'package:mapping_app/Screens/Auth_ui/forgot_password.dart';
import 'package:mapping_app/Screens/home_page.dart';
import 'package:mapping_app/Screens/splash_screen.dart';
import 'package:mapping_app/Utils/routes_names.dart';
import '../Screens/Auth_ui/login_screen.dart';
import '../Screens/Auth_ui/signup_screen.dart';

//custom routes
class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      //Login Screen
      case RouteNames.loginScreen:
        return MaterialPageRoute(builder: (context) => const LoginScreen());
        //splash screen
      case RouteNames.splashScreen:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
        //Sign up Screen
      case RouteNames.signUpScreen:
        return MaterialPageRoute(builder: (context) => const SignUpScreen());
        // forgot Password Screen
      case RouteNames.forgotPasswordScreen:
        return MaterialPageRoute(builder: (context) => const ForgotPassword());
        //Homepage Screen
      case RouteNames.homeScreen:
        return MaterialPageRoute(builder: (context) => const Homepage());




      default:
        return MaterialPageRoute(builder: (context) {
          return const Scaffold(
            body: Center(child: Text("No Routes Defined")),
          );
        });
    }
  }
}
