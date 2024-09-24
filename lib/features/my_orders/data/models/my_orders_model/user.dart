class User {
  int? id;
  String? email;
  int? phoneNumber;
  String? address;
  String? workType;
  String? companyType;
  String? employeesNumber;
  String? jobTitle;
  String? password;
  String? role;
  String? profile;
  bool? static;
  DateTime? createdAt;
  DateTime? updatedAt;

  User({
    this.id,
    this.email,
    this.phoneNumber,
    this.address,
    this.workType,
    this.companyType,
    this.employeesNumber,
    this.jobTitle,
    this.password,
    this.role,
    this.profile,
    this.static,
    this.createdAt,
    this.updatedAt,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json['id'] as int?,
        email: json['email'] as String?,
        phoneNumber: json['phoneNumber'] as int?,
        address: json['address'] as String?,
        workType: json['workType'] as String?,
        companyType: json['companyType'] as String?,
        employeesNumber: json['employeesNumber'] as String?,
        jobTitle: json['jobTitle'] as String?,
        password: json['password'] as String?,
        role: json['role'] as String?,
        profile: json['profile'] as String?,
        static: json['static'] as bool?,
        createdAt: json['createdAt'] == null
            ? null
            : DateTime.parse(json['createdAt'] as String),
        updatedAt: json['updatedAt'] == null
            ? null
            : DateTime.parse(json['updatedAt'] as String),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'phoneNumber': phoneNumber,
        'address': address,
        'workType': workType,
        'companyType': companyType,
        'employeesNumber': employeesNumber,
        'jobTitle': jobTitle,
        'password': password,
        'role': role,
        'profile': profile,
        'static': static,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
      };
}