import 'package:comatecs/constants.dart';
import 'package:comatecs/core/services/shared_prefrences_singleton.dart';
import 'package:comatecs/core/utils/api_service.dart';
import 'package:comatecs/features/auth/domain/entities/user_entity.dart';

abstract class RemoteAuthDataSource {
  Future<UserEntity> createAccountWithEmailAndPassword({
    required UserEntity userEntity,
  });
  Future<UserEntity> login({
    required UserEntity userEntity,
  });
  Future<UserEntity> resetPassword({
    required UserEntity userEntity,
  });
  Future<UserEntity> forgetPassword();
}

class RemoteAuthDataSourceImplementaion implements RemoteAuthDataSource {
  final ApiService apiService;

  RemoteAuthDataSourceImplementaion({required this.apiService});
  @override
  Future<UserEntity> createAccountWithEmailAndPassword({
    required UserEntity userEntity,
  }) async {
    await apiService.postData(
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      endPoint: 'users/register',
      data: {
        "email": userEntity.email,
        "phoneNumber": int.parse(userEntity.phoneNumber!),
        // "name": name.text,
        "address": userEntity.address,
        "workType": userEntity.workType,
        "companyType": userEntity.companyType,
        "employeesNumber": userEntity.employeeNumber,
        "jobTitle": userEntity.yourRole,
      },
    );
    return userEntity;
  }

  @override
  Future<UserEntity> login({
    required UserEntity userEntity,
  }) async {
    var response = await apiService.postData(
      headers: {
        'Authorization':
            'Bearer ${SharedPreferencesSingleton.getSecureString(key: kIsTokenGot)}',
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      endPoint: 'users/login',
      data: {
        "email": userEntity.email,
        "password": userEntity.password,
      },
    );

    await SharedPreferencesSingleton.setSecureString(
      key: kIsTokenGot,
      value: response.data!['access_token'],
    );

    return userEntity;
  }

  @override
  Future<UserEntity> resetPassword({
    required UserEntity userEntity,
  }) async {
    await apiService.patchData(
      endPoint: 'users/profile',
      data: {
        "password": userEntity.password,
      },
    );

    return userEntity;
  }

  @override
  Future<UserEntity> forgetPassword() {
    // TODO: implement forgetPassword
    throw UnimplementedError();
  }
}
