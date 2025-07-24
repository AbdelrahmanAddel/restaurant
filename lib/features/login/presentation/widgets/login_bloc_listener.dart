import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intern_restaurant/core/helpers/navigation_extension.dart';
import 'package:intern_restaurant/core/routes/routes_strings.dart';
import 'package:intern_restaurant/features/login/presentation/cubit/login_cubit.dart';
import 'package:intern_restaurant/features/login/presentation/cubit/login_state.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) {
        switch (current) {
          case LoginLoadingState():
          case LoginSuccessState():
          case LoginFailureState():
            return true;
          default:
            return false;
        }
      },
      listener: (context, state) {
        if (state is LoginFailureState) {
          context.pop();
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(state.error)));
        } else if (state is LoginSuccessState) {
          context.pop();
          context.pushReplacement(RoutesStrings.home);
        } else {
          showDialog(
            context: context,
            builder: (builder) {
              return const Center(child: CircularProgressIndicator());
            },
          );
        }
      },
      child: SizedBox.shrink(),
    );
  }
}
