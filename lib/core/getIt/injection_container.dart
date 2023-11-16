import 'package:get_it/get_it.dart';
import 'package:sportify/screens/competition/logic/bloc/competition_bloc.dart';
import 'package:sportify/screens/competition/logic/data/datasources/competition_datasource.dart';
import 'package:sportify/screens/competition/logic/data/repositories/competition_repository.dart';
import 'package:sportify/screens/login/logic/bloc/login_bloc.dart';
import 'package:sportify/screens/login/logic/data/datasources/login_datasource.dart';
import 'package:sportify/screens/login/logic/data/repositories/login_repository.dart';
import 'package:sportify/screens/result/screens/grid/logic/bloc/grid_bloc.dart';
import 'package:sportify/screens/result/screens/grid/logic/data/datasources/grid_datasource.dart';
import 'package:sportify/screens/result/screens/grid/logic/data/repositories/grid_repository.dart';

var sl = GetIt.instance;

void initGetIt() async {
  sl.registerFactory<LoginBloc>(() => LoginBloc(sl()));

  sl.registerLazySingleton<LoginRepository>(() => LoginRepositoryImpl(sl()));

  sl.registerLazySingleton<LoginDataSource>(() => LoginDataSourceImpl());

  sl.registerFactory<CompetitionBloc>(() => CompetitionBloc(sl()));

  sl.registerLazySingleton<CompetitionRepository>(
      () => CompetitionRepositoryImpl(sl()));

  sl.registerLazySingleton<CompetitionDataSource>(
      () => CompetitionDataSourceImpl());

  sl.registerFactory<GridBloc>(() => GridBloc(sl()));

  sl.registerLazySingleton<GridRepository>(() => GridRepositoryImpl(sl()));

  sl.registerLazySingleton<GridDataSource>(() => GridDataSourceImpl());
}
