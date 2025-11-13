import 'package:flutter/material.dart';
import 'package:hammam_app/features/onboarding/OnBoarding.dart';

class RoutesGenerator {
  static Route<dynamic> onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
     // case PageRouteName.signup:
      //  return MaterialPageRoute(
       //   builder: (context) => const SignupScreen(),
       //   settings: settings,
        //);







  default:
  return MaterialPageRoute(
  builder: (context) => OnBoarding(),
  //builder: (context)=> MainScreen(),
  settings: settings,
  );
   }
  }
}
