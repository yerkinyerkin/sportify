part of 'grid_bloc.dart';

abstract class GridEvent {}

class GetCompParticipants extends GridEvent {
  final String id;
  final String age;
  final String weight;

  GetCompParticipants(this.id, this.age, this.weight);
}
