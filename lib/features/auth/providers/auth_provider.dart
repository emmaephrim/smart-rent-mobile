import 'package:flutter_riverpod/legacy.dart';

class AuthState {
  final bool isLoggedIn;
  final String? userName;
  final String? role;

  const AuthState({this.isLoggedIn = true, this.userName, this.role});

  /// Creates a copy of this [AuthState] with the specified fields replaced by new values.
  ///
  /// If a parameter is null, the corresponding field from the current instance is used.
  /// This is a common pattern in Dart for creating immutable copies of objects with
  /// selective field updates.
  ///
  /// Parameters:
  ///   - [isLoggedIn]: Optional. If provided, replaces the current [isLoggedIn] value.
  ///   - [userName]: Optional. If provided, replaces the current [userName] value.
  ///   - [role]: Optional. If provided, replaces the current [role] value.
  ///
  /// Returns:
  ///   A new [AuthState] instance with updated fields. Fields not provided
  ///   retain their values from the current instance.
  ///
  /// Example:
  ///   ```dart
  ///   final currentState = AuthState(isLoggedIn: true, userName: 'john', role: 'admin');
  ///   final updatedState = currentState.copyWith(role: 'user');
  ///   // Result: isLoggedIn: true, userName: 'john', role: 'user'
  ///   ```
  AuthState copyWith({bool? isLoggedIn, String? userName, String? role}) {
    return AuthState(
      isLoggedIn: isLoggedIn ?? this.isLoggedIn,
      userName: userName ?? this.userName,
      role: role ?? this.role,
    );
  }
}

class AuthNotifier extends StateNotifier<AuthState> {
  AuthNotifier() : super(const AuthState());

  void login(String name, String role) {
    state = state.copyWith(isLoggedIn: true, userName: name, role: role);
  }

  void logout() {
    state = const AuthState();
  }
}

final authProvider = StateNotifierProvider<AuthNotifier, AuthState>((ref) {
  return AuthNotifier();
});
