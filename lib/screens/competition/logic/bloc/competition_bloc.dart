import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:sportify/screens/competition/logic/data/models/competition_model.dart';
import 'package:sportify/screens/competition/logic/data/repositories/competition_repository.dart';

part 'competition_event.dart';
part 'competition_state.dart';

class CompetitionBloc extends Bloc<CompetitionEvent, CompetitionState> {
  Box tokens = Hive.box('tokens');
  final CompetitionRepository competitionRepository;
  CompetitionBloc(this.competitionRepository) : super(CompetitionInitial()) {
    on<GetCompetition>(
      (event, emit) async {
        emit(CompetitionLoading());
        try {
          final List<Data> response =
              await competitionRepository.getCompetition();
          emit(CompetitionSuccess(response));
        } on DioError catch (e) {
          emit(CompetitionFailure(e.response!));
        }
      },
    );
  }
}
