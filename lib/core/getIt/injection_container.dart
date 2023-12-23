import 'package:get_it/get_it.dart';
import 'package:sportify/screens/add_student/logic/bloc%20/add_student_bloc.dart';
import 'package:sportify/screens/add_student/logic/data/datasources/add_student_datasource.dart';
import 'package:sportify/screens/add_student/logic/data/repositories/add_student_repository.dart';
import 'package:sportify/screens/competition/logic/bloc/competition_bloc.dart';
import 'package:sportify/screens/competition/logic/data/datasources/competition_datasource.dart';
import 'package:sportify/screens/competition/logic/data/repositories/competition_repository.dart';
import 'package:sportify/screens/login/logic/bloc/login_bloc.dart';
import 'package:sportify/screens/login/logic/data/datasources/login_datasource.dart';
import 'package:sportify/screens/login/logic/data/repositories/login_repository.dart';
import 'package:sportify/screens/result/screens/winners/logic/bloc/winners_bloc.dart';
import 'package:sportify/screens/result/screens/winners/logic/data/datasources/grid_datasource.dart';
import 'package:sportify/screens/result/screens/winners/logic/data/repositories%20copy/grid_repository.dart';
import 'package:sportify/screens/result/screens/grid/logic/bloc/grid_bloc.dart';
import 'package:sportify/screens/result/screens/grid/logic/data/datasources/grid_datasource.dart';
import 'package:sportify/screens/result/screens/grid/logic/data/repositories/grid_repository.dart';
import 'package:sportify/screens/students/logic/bloc/registered_students_bloc.dart';
import 'package:sportify/screens/students/logic/data/datasources/registered_students_datasource.dart';
import 'package:sportify/screens/students/logic/data/repositories%20copy/registered_students_repository.dart';
import 'package:sportify/screens/students/screens/competition_students/logic/bloc/competition_st_bloc.dart';
import 'package:sportify/screens/students/screens/competition_students/logic/data/datasources/competition_st_datasource.dart';
import 'package:sportify/screens/students/screens/competition_students/logic/data/repositories%20copy/competition_st_repository.dart';

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

  sl.registerFactory<WinnersBloc>(() => WinnersBloc(sl()));

  sl.registerLazySingleton<WinnersRepository>(() => WinnersRepositoryImpl(sl()));

  sl.registerLazySingleton<WinnersDataSource>(() => WinnersDataSourceImpl());

  sl.registerFactory<AddStudentBloc>(() => AddStudentBloc(sl()));

  sl.registerLazySingleton<AddStudentRepository>(() => AddStudentRepositoryImpl(sl()));

  sl.registerLazySingleton<AddStudentDataSource>(() => AddStudentDataSourceImpl());

  sl.registerFactory<RegisteredStudentsBloc>(() => RegisteredStudentsBloc(sl()));

  sl.registerLazySingleton<RegisteredStRepository>(() => RegisteredStRepositoryImpl(sl()));

  sl.registerLazySingleton<RegisteredStDataSource>(() => RegisteredStDataSourceImpl());

  sl.registerFactory<CompetitionStBloc>(() => CompetitionStBloc(sl()));

  sl.registerLazySingleton<CompetitionStRepository>(() => CompetitionStRepositoryImpl(sl()));

  sl.registerLazySingleton<CompetitionStDataSource>(() => CompetitionStDataSourceImpl());
}
