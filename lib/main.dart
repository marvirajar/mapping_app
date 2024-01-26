import 'package:flutter/material.dart';
import 'package:mapping_app/Utils/routes.dart';
import 'package:mapping_app/Utils/routes_names.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'mapping app flutter using dart',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: RouteNames.homePage,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
