import 'package:dartz/dartz.dart';
import 'package:intern_restaurant/features/login/data/models/login_with_email_and_password_model.dart';
import 'package:intern_restaurant/features/login/domain/repositories/login_repository.dart';

class LoginWithEmailAndPassUsecase {
  final LoginRepository _loginRepository;
  LoginWithEmailAndPassUsecase(this._loginRepository);
  Future<Either> call(LoginWithEmailAndPasswordModel loginModel) {
    return _loginRepository.loginWithEmailAndPassword(loginModel);
  }
}
