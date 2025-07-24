import 'package:dartz/dartz.dart';
import 'package:intern_restaurant/features/login/data/models/login_with_email_and_password_model.dart';

abstract class LoginRepository {
  Future<Either<String, void>> loginWithEmailAndPassword(LoginWithEmailAndPasswordModel loginModel);
}
