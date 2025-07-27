import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intern_restaurant/features/login/data/models/login_with_email_and_password_model.dart';
import 'package:intern_restaurant/features/login/domain/usecases/login_with_email_and_pass_usecase.dart';
import 'package:intern_restaurant/features/login/presentation/cubit/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.loginWithEmailAndPassUsecase) : super(LoginInitial());

  final LoginWithEmailAndPassUsecase loginWithEmailAndPassUsecase;
  bool isPasswordVisible = true;

  void loginWithEmailAndPassword(
    LoginWithEmailAndPasswordModel loginModel,
  ) async {
    emit(LoginLoadingState());
    final result = await loginWithEmailAndPassUsecase.call(loginModel);
    result.fold(
      (failure) => emit(LoginFailureState(failure)),
      (success) => emit(LoginSuccessState()),
    );
  }

  void changePasswordVisibility() {
    isPasswordVisible = !isPasswordVisible;
    emit(LoginInitial());
  }
}
