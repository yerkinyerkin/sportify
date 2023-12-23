import 'package:dio/dio.dart';
import 'package:sportify/screens/profile/logic/data/datasources/profile_datasource.dart';
import 'package:sportify/screens/profile/logic/data/models/profile_model.dart';

abstract class ProfileRepository {
  Future<ProfileModel> getProfile(String id);
}

class ProfileRepositoryImpl implements ProfileRepository {
  final ProfileDataSource profileDataSource;

  ProfileRepositoryImpl(this.profileDataSource);

  @override
  Future<ProfileModel> getProfile(String id) async {
    Response response = await profileDataSource.getProfile(id);
    return ProfileModel.fromJson(response.data);
  }
}
