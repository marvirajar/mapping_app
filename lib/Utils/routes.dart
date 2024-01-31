import 'package:flutter/material.dart';
import 'package:mapping_app/Screens/homepage.dart';
import 'package:mapping_app/Screens/splash_screen.dart';
import 'package:mapping_app/Utils/routes_names.dart';

//custom routes
class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.homePage:
        return MaterialPageRoute(builder: (context) => const Homepage());
      case RouteNames.splashScreen:
        return MaterialPageRoute(builder: (context) => const SplashScreen());

      default:
        return MaterialPageRoute(builder: (context) {
          return const Scaffold(
            body: Center(child: Text("No Routes Defined")),
          );
        });
    }
  }
}
