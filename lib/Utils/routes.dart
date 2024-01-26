import 'package:flutter/material.dart';
import 'package:mapping_app/Utils/routes_names.dart';

import '../Screens/homepage.dart';
//custom routes
class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.homePage:
        return MaterialPageRoute(
            builder: (context) => const MyHomePage(title: "Hello"));
      default:
        return MaterialPageRoute(builder: (context) {
          return const Scaffold(
            body: Center(child: Text("No Routes Defined")),
          );
        });
    }
  }
}
