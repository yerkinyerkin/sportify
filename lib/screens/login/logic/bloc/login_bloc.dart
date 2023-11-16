import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:sportify/screens/login/logic/data/models/login_model.dart';
import 'package:sportify/screens/login/logic/data/repositories/login_repository.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  Box tokens = Hive.box('tokens');
  final LoginRepository loginRepository;
  LoginBloc(this.loginRepository) : super(LoginInitial()) {
    on<GetToken>(
      (event, emit) async {
        emit(LoginLoading());
        try {
          final LoginModel response =
              await loginRepository.getToken(event.email, event.password);
          tokens.put('access', response.access);
          emit(LoginSuccess(response));
        } on DioError catch (e) {
          emit(LoginFailure(e.response!));
        }
      },
    );
  }
}
