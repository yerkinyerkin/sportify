import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:sportify/screens/result/screens/winners/logic/data/models/winners_model.dart';
import 'package:sportify/screens/result/screens/winners/logic/data/repositories%20copy/grid_repository.dart';

part 'winners_event.dart';
part 'winners_state.dart';

class WinnersBloc extends Bloc<WinnersEvent, WinnersState> {
  final WinnersRepository winnersRepository;
  WinnersBloc(this.winnersRepository) : super(WinnersInitial()) {
    on<GetWinners>(
      (event, emit) async {
        emit(WinnersLoading());
        try {
          final WinnersModel response = await winnersRepository.getWinners(
            event.id,
            event.age,
          );
          emit(WinnersSuccess(response));
        } on DioError catch (e) {
          emit(WinnersFailure(e.response!));
        }
      },
    );
  }
}
