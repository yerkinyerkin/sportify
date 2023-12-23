import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:sportify/core/getIt/injection_container.dart';
import 'package:sportify/core/hive/hive_init.dart';
import 'package:sportify/screens/add_student/logic/bloc%20/add_student_bloc.dart';
import 'package:sportify/screens/competition/logic/bloc/competition_bloc.dart';
import 'package:sportify/screens/login/logic/bloc/login_bloc.dart';
import 'package:sportify/screens/main/screens/main_screen.dart';
import 'package:sportify/screens/profile/logic/bloc/profile_bloc.dart';
import 'package:sportify/screens/result/screens/winners/logic/bloc/winners_bloc.dart';
import 'package:sportify/screens/result/screens/grid/logic/bloc/grid_bloc.dart';
import 'package:sportify/screens/students/logic/bloc/registered_students_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  initHiveAdapters();
  await initHiveBoxes();
  initGetIt();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LoginBloc>(
          create: (_) => sl(),
        ),
        BlocProvider<CompetitionBloc>(
          create: (_) => sl(),
        ),
        BlocProvider<GridBloc>(
          create: (_) => sl(),
        ),
        BlocProvider<WinnersBloc>(
          create: (_) => sl(),
        ),
        BlocProvider<AddStudentBloc>(
          create: (_) => sl(),
        ),
        BlocProvider<RegisteredStudentsBloc>(
          create: (_) => sl(),
        ),
        BlocProvider<ProfileBloc>(
          create: (_) => sl(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: MainScreen(
          index: 3,
        ),
      ),
    );
  }
}
