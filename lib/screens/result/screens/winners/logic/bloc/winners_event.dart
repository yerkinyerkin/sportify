part of 'winners_bloc.dart';

abstract class WinnersEvent {}

class GetWinners extends WinnersEvent {
  final String id;
  final String age;

  GetWinners(this.id, this.age,);
}
