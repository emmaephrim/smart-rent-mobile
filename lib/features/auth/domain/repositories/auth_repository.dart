import 'package:smart_rent_mobile/features/auth/domain/entities/user.dart';

abstract class AuthRepository {
  Future<User> login(String email, String password);
}
