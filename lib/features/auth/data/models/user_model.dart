import 'package:smart_rent_mobile/features/auth/domain/entities/user.dart';

class UserModel extends User {
  UserModel({required super.id, required super.email});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      email: json['email'],
      // role: UserRole.values.byName(json['role']),
    );
  }
}
