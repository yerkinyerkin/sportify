import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:sportify/screens/profile/logic/data/models/profile_model.dart';
import 'package:sportify/screens/profile/logic/data/repositories/profile_repository.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileRepository profileRepository;
  ProfileBloc(this.profileRepository) : super(ProfileInitial()) {
    on<GetProfile>(
      (event, emit) async {
        emit(ProfileLoading());
        try {
          final ProfileModel response = await profileRepository.getProfile(
            event.id
          );
          emit(ProfileSuccess(response));
        } on DioError catch (e) {
          emit(ProfileFailure(e.response!));
        }
      },
    );
  }
}
