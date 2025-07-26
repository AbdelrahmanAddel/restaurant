import 'package:flutter/material.dart';
import 'package:intern_restaurant/features/auth/presentation/widgets/authentication_view_body.dart';

class AuthenticationView extends StatelessWidget {
  const AuthenticationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: AuthenticationViewBody()));
  }
}
