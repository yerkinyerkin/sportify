part of 'competition_bloc.dart';

abstract class CompetitionState {}

class CompetitionInitial extends CompetitionState {}

class CompetitionLoading extends CompetitionState {}

class CompetitionSuccess extends CompetitionState {
  final CompetitionModel response;
  final RegionsModel regionsModel;

  CompetitionSuccess(this.response, this.regionsModel);
}

class CompetitionFailure extends CompetitionState {
  final Response response;

  CompetitionFailure(this.response);
}
