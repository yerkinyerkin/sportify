part of 'login_bloc.dart';

abstract class LoginEvent {}

class GetToken extends LoginEvent {
  final String email;
  final String password;

  GetToken(this.email, this.password);
}
