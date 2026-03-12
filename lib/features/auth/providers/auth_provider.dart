import 'package:flutter_riverpod/legacy.dart';

class AuthState {
  final bool isLoggedIn;
  final String? userName;
  final String? role;

  const AuthState({this.isLoggedIn = true, this.userName, this.role});

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
