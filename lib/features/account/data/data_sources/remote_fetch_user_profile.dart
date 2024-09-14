import 'package:comatecs/constants.dart';
import 'package:comatecs/core/services/shared_prefrences_singleton.dart';
import 'package:comatecs/core/utils/api_service.dart';
import 'package:comatecs/features/account/data/models/user_profile_model.dart';
import 'package:comatecs/features/account/domain/entites/user_profile_entity.dart';

abstract class RemoteAccountDataSource {
  Future<UserProfileEntity> fetchUserProfile();
}

class RemoteAccountDataSourceImplementaion extends RemoteAccountDataSource {
  final ApiService apiService;

  RemoteAccountDataSourceImplementaion({required this.apiService});

  @override
  Future<UserProfileEntity> fetchUserProfile() async {
    Map<String, dynamic> userProfileEntity = await apiService.getData(
      endPoint: 'users/profile',
      headers: {
        'Authorization':
            'Bearer ${await SharedPrefrencesSingleton.getSecureString(key: kIsTokenGot)}',
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    );

    return UserProfile.fromJson(userProfileEntity);
  }
}
