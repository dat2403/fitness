import 'package:fitness/views/auth/signup_view.dart';
import 'package:fitness/views/on_boarding/on_boarding_view.dart';
import 'package:fitness/views/on_boarding/started_view.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case StartedView.routeName:
      {
        return MaterialPageRoute(
          settings: routeSettings,
          builder: (_) => const StartedView(),
        );
      }
    case OnBoardingView.routeName:
      {
        return MaterialPageRoute(
          settings: routeSettings,
          builder: (_) => const OnBoardingView(),
        );
      }
    case SignUpView.routeName:
      {
        return MaterialPageRoute(
          settings: routeSettings,
          builder: (_) => const SignUpView(),
        );
      }
    default:
      {
        return MaterialPageRoute(
          settings: routeSettings,
          builder: (_) => const Scaffold(
            body: Center(
              child: Text('Screen does not exist!'),
            ),
          ),
        );
      }
  }
}
