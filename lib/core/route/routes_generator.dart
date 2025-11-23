import 'package:flutter/material.dart';
import 'package:hammam_app/core/route/routes.dart';
import 'package:hammam_app/features/auth/register/login/presentation/view/otp_screen.dart';
import 'package:hammam_app/features/onboarding/OnBoarding.dart';

import '../../features/auth/login/presentation/view/login_screen.dart';
import '../../features/auth/register/login/presentation/view/register_screen.dart';

class RoutesGenerator {
  static Route<dynamic> onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
     case PageRouteName.signup:
        return MaterialPageRoute(
         builder: (context) => const SignupScreen(),
          settings: settings,
        );

    case PageRouteName.login:
           return MaterialPageRoute(
             builder: (context) => const LoginScreen(),
             settings: settings,
           );
      case PageRouteName.otp:
        return MaterialPageRoute(
          builder: (context) => const OtpScreen(),
          settings: settings,
        );





  default:
  return MaterialPageRoute(
  builder: (context) => OnBoarding(),
  //builder: (context)=> MainScreen(),
  settings: settings,
  );
   }
  }
}
