part of 'profile_bloc.dart';

abstract class ProfileEvent {}

class GetProfile extends ProfileEvent {
  final String id;

  GetProfile(this.id, );
}
