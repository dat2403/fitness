import 'package:fitness/views/auth/complete_profile_view.dart';
import 'package:fitness/views/auth/login_view.dart';
import 'package:fitness/views/auth/signup_view.dart';
import 'package:fitness/views/auth/welcome_view.dart';
import 'package:fitness/views/auth/your_goal_view.dart';
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
    case LoginView.routeName:
      {
        return MaterialPageRoute(
          settings: routeSettings,
          builder: (_) => const LoginView(),
        );
      }
    case CompleteProfileView.routeName:
      {
        return MaterialPageRoute(
          settings: routeSettings,
          builder: (_) => const CompleteProfileView(),
        );
      }
    case YourGoalView.routeName:
      {
        return MaterialPageRoute(
          settings: routeSettings,
          builder: (_) => const YourGoalView(),
        );
      }
    case WelcomeView.routeName:
      {
        return MaterialPageRoute(
          settings: routeSettings,
          builder: (_) => const WelcomeView(),
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
