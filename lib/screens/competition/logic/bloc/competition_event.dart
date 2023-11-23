part of 'competition_bloc.dart';

abstract class CompetitionEvent {}

class GetCompetition extends CompetitionEvent {
  String? region;
  GetCompetition(this.region);
}
