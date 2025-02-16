part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  factory AuthState({
    showPassword,
    showRegisterPassword,
    showConformPassword,
  }) = _AuthState;

  factory AuthState.initial() => AuthState(
      showPassword: false,
      showRegisterPassword: false,
      showConformPassword: false);
}
