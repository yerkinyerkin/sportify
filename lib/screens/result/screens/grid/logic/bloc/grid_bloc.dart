import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:sportify/screens/result/screens/grid/logic/data/models/grid_model.dart';
import 'package:sportify/screens/result/screens/grid/logic/data/repositories/grid_repository.dart';

part 'grid_event.dart';
part 'grid_state.dart';

class GridBloc extends Bloc<GridEvent, GridState> {
  final GridRepository gridRepository;
  GridBloc(this.gridRepository) : super(GridInitial()) {
    on<GetCompParticipants>(
      (event, emit) async {
        emit(GridLoading());
        try {
          final GridModel response = await gridRepository.getGameParticipants(
              event.id, event.age, event.weight);
          emit(GridSuccess(response));
        } on DioError catch (e) {
          emit(GridFailure(e.response!));
        }
      },
    );
  }
}
