import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intern_restaurant/core/error/handle_firebase_auth_exception.dart';

import 'package:intern_restaurant/features/login/data/datasources/login_remote_datasource.dart';
import 'package:intern_restaurant/features/login/data/models/login_with_email_and_password_model.dart';
import 'package:intern_restaurant/features/login/domain/repositories/login_repository.dart';

class LoginRepositoryImpl implements LoginRepository {
  final LoginRemoteDatasource _loginRemoteDatasource;
  LoginRepositoryImpl(this._loginRemoteDatasource);
  @override
  Future<Either<String, void>> loginWithEmailAndPassword(
    LoginWithEmailAndPasswordModel loginModel,
  ) async {
    try {
      await _loginRemoteDatasource.loginWithEmailAndPassword(loginModel);
      return const Right(null);
    } on FirebaseAuthException catch (error) {
      return Left(handleFirebaseAuthException(error));
    } catch (error) {
      debugPrint(error.toString());
      return Left('Something went wrong. Please try again');
    }
  }
}
