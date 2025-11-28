import 'package:flutter/material.dart';
import 'package:hammam_app/core/route/routes.dart';
import 'package:hammam_app/features/auth/forget_pass/presentation/views/newpass.dart';
import 'package:hammam_app/features/auth/forget_pass/presentation/views/otp2_screen.dart';
import 'package:hammam_app/features/auth/register/login/presentation/view/otp_screen.dart';
import 'package:hammam_app/features/auth/forget_pass/presentation/views/email.dart';
import 'package:hammam_app/features/onboarding/OnBoarding.dart';
import 'package:hammam_app/features/tabs/presentations/views/main.dart';
import 'package:hammam_app/features/tabs/presentations/views/menu/menu.dart';
import 'package:hammam_app/features/tabs/presentations/views/my%20trips/my_trip.dart';

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
      case PageRouteName.otp2:
        return MaterialPageRoute(
          builder: (context) => const Otp2Screen(),
          settings: settings,
        );

      case PageRouteName.email:
        return MaterialPageRoute(
          builder: (context) => const Email(),
          settings: settings,
        );
      case PageRouteName.newpass:
        return MaterialPageRoute(
          builder: (context) => const Newpass(),
          settings: settings,
        );

      case PageRouteName.main:
        return MaterialPageRoute(
          builder: (context) => const Main(),
          settings: settings,
        );

      case PageRouteName.menu:
        return MaterialPageRoute(
          builder: (context) => const Menu(),
          settings: settings,
        );
      case PageRouteName.trip:
        return MaterialPageRoute(
          builder: (context) => const MyTrip(),
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
