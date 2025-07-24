import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:intern_restaurant/features/menu/data/datasources/menu_remote_data_source.dart';
import 'package:intern_restaurant/features/menu/data/models/menu_model.dart';
import 'package:intern_restaurant/features/menu/domain/repositories/menu_repository.dart';

class MenuRepositoryImpl extends MenuRepository {
  final MenuRemoteDataSource _menuRemoteDataSource;
  MenuRepositoryImpl(this._menuRemoteDataSource);
  @override
  Future<Either<String, List<MenuModel>>> getMenu() async {
    try {
      return Right(await _menuRemoteDataSource.getMenu());
    } on FirebaseException catch (error) {
      return Left(error.message ?? 'Something went wrong');
    }
  }
}
