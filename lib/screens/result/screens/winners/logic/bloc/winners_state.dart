part of 'winners_bloc.dart';

abstract class WinnersState {}

class WinnersInitial extends WinnersState {}

class WinnersLoading extends WinnersState {}

class WinnersSuccess extends WinnersState {
  final WinnersModel response;

  WinnersSuccess(this.response);
}

class WinnersFailure extends WinnersState {
  final Response response;

  WinnersFailure(this.response);
}
