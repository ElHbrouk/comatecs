import 'package:comatecs/features/auth/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({
    required super.phoneNumber,
    required super.address,
    required super.workType,
    required super.companyType,
    required super.employeeNumber,
    required super.yourRole,
    required super.email,
    required super.password,
  });

  factory UserModel.fromJson(user) {
    return UserModel(
      phoneNumber: user['phoneNumber'],
      address: user['address'],
      companyType: user['companyType'],
      employeeNumber: user['employeesNumber'],
      workType: user['workType'],
      yourRole: user['jobTitle'],
      email: user['email'],
      password: user['password'],
    );
  }
}
