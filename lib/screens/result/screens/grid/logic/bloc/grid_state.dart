part of 'grid_bloc.dart';

abstract class GridState {}

class GridInitial extends GridState {}

class GridLoading extends GridState {}

class GridSuccess extends GridState {
  final GridModel response;

  GridSuccess(this.response);
}

class GridFailure extends GridState {
  final Response response;

  GridFailure(this.response);
}
