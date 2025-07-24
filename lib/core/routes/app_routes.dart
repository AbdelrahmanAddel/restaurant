import 'package:flutter/material.dart';
import 'package:intern_restaurant/core/routes/routes_strings.dart';
import 'package:intern_restaurant/features/auth/presentation/view/authentication_view.dart';
import 'package:intern_restaurant/features/login/presentation/view/login_page.dart';

Route<dynamic>? generateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case RoutesStrings.authenticationView:
      return MaterialPageRoute(builder: (context) => AuthenticationView());
    case RoutesStrings.login:
      return MaterialPageRoute(builder: (context) => LoginView());

    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
