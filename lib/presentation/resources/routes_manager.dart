import 'package:complete_advanced_flutter/presentation/forgot_password/forgot_password.dart';
import 'package:complete_advanced_flutter/presentation/login/login.dart';
import 'package:complete_advanced_flutter/presentation/main/main_view.dart';
import 'package:complete_advanced_flutter/presentation/onboarding/onboarding.dart';
import 'package:complete_advanced_flutter/presentation/register/register.dart';
import 'package:complete_advanced_flutter/presentation/resources/string_manager.dart';
import 'package:complete_advanced_flutter/presentation/splash/splash.dart';
import 'package:complete_advanced_flutter/presentation/store_details/store_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String splashRoute = "/";
  static const String onBoardingRoute = "/onBording";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String forgotPasswordRouteRoute = "/forgot_password";
  static const String mainRoute = "/main";
  static const String storeDetailsRoute = "/storeDetails";
}

class RoutesGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginView());
      case Routes.onBoardingRoute:
        return MaterialPageRoute(builder: (_) => const OnBoardingView());
      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) => const RegisterView());
      case Routes.forgotPasswordRouteRoute:
        return MaterialPageRoute(builder: (_) => const ForgotPasswordView());
      case Routes.mainRoute:
        return MaterialPageRoute(builder: (_) => const MainView());
      case Routes.storeDetailsRoute:
        return MaterialPageRoute(builder: (_) => const StoreDetailsView());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: Text(AppStrings.noRouteFound),
              ),
              body: Center(
                child: Text(AppStrings.noRouteFound),
              ),
            ));
  }
}
