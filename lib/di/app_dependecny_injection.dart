import 'package:get_it/get_it.dart';
import 'package:intern_restaurant/features/login/data/datasources/login_remote_datasource.dart';
import 'package:intern_restaurant/features/login/data/repositories/login_repository_impl.dart';
import 'package:intern_restaurant/features/login/domain/repositories/login_repository.dart';
import 'package:intern_restaurant/features/login/domain/usecases/login_with_email_and_pass_usecase.dart';
import 'package:intern_restaurant/features/login/presentation/cubit/login_cubit.dart';
import 'package:intern_restaurant/features/menu/data/datasources/menu_remote_data_source.dart';
import 'package:intern_restaurant/features/menu/data/repositories/menu_repository_impl.dart';
import 'package:intern_restaurant/features/menu/domain/repositories/menu_repository.dart';
import 'package:intern_restaurant/features/menu/domain/usecases/get_menu_usecase.dart';
import 'package:intern_restaurant/features/menu/presentation/cubit/menu_cubit.dart';

final getIt = GetIt.instance;

Future<void> dependencyInjectionInit() async {
  _login();
  _menu();
}

void _login() {
  getIt.registerLazySingleton(() => LoginRemoteDatasource());
  getIt.registerLazySingleton<LoginRepository>(
    () => LoginRepositoryImpl(getIt()),
  );
  getIt.registerLazySingleton(() => LoginWithEmailAndPassUsecase(getIt()));
  getIt.registerLazySingleton(() => LoginCubit(getIt()));
}

void _menu() {
  getIt.registerLazySingleton(() => MenuRemoteDataSource());
  getIt.registerLazySingleton<MenuRepository>(
    () => MenuRepositoryImpl(getIt()),
  );
  getIt.registerLazySingleton(() => GetMenuUsecase(getIt()));
  getIt.registerLazySingleton(() => MenuCubit(getIt()));
}
