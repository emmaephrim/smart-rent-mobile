import 'package:smart_rent_mobile/features/auth/domain/entities/user.dart';
import 'package:smart_rent_mobile/features/auth/domain/repositories/auth_repository.dart';

class LoginUser {
  final AuthRepository repository;

  LoginUser(this.repository);

  Future<User> call(String email, String password) {
    return repository.login(email, password);
  }
}
