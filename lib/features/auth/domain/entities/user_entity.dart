class UserEntity {
  final String? email;
  final String? password;
  final String? phoneNumber;
  final String? address;
  final String? workType;
  final String? companyType;
  final String? employeeNumber;
  final String? yourRole;

  UserEntity({
    required this.phoneNumber,
    required this.address,
    required this.workType,
    required this.companyType,
    required this.employeeNumber,
    required this.yourRole,
    required this.email,
    required this.password,
  });
}
