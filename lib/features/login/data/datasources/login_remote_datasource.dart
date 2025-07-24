import 'package:firebase_auth/firebase_auth.dart';
import 'package:intern_restaurant/features/login/data/models/login_with_email_and_password_model.dart';

class LoginRemoteDatasource {
  Future<void> loginWithEmailAndPassword(
    LoginWithEmailAndPasswordModel loginModel,
  ) async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: loginModel.email,
      password: loginModel.password,
    );
  }
}
