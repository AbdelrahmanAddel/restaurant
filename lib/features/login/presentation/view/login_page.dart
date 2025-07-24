import 'package:flutter/material.dart';
import 'package:intern_restaurant/features/login/presentation/widgets/login_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: LoginViewBody(),
      ),
    );
  }
}
