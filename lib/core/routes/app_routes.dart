import 'package:flutter/material.dart';
import 'package:intern_restaurant/core/routes/routes_strings.dart';
import 'package:intern_restaurant/features/auth/presentation/view/authentication_view.dart';
import 'package:intern_restaurant/features/login/presentation/view/login_page.dart';
import 'package:intern_restaurant/features/menu/presentation/view/cart_view.dart';
import 'package:intern_restaurant/features/menu/presentation/view/menu_view.dart';

Route<dynamic>? generateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case RoutesStrings.authenticationView:
      return MaterialPageRoute(builder: (context) => AuthenticationView());
    case RoutesStrings.login:
      return MaterialPageRoute(builder: (context) => LoginView());
    case RoutesStrings.menu:
      return MaterialPageRoute(builder: (context) => MenuView());
    case RoutesStrings.card:
      return MaterialPageRoute(builder: (context) => CartView());

    default:
      return MaterialPageRoute(
        builder: (context) => Scaffold(
          body: Center(child: Text("The route ${settings.name} does't exits")),
        ),
      );
  }
}
