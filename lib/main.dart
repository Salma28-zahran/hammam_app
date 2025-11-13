import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hammam_app/core/route/routes_generator.dart';




void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return
      MaterialApp(
        onGenerateRoute: RoutesGenerator.onGenerateRoutes,
        debugShowCheckedModeBanner: false,
    );
  }
}

