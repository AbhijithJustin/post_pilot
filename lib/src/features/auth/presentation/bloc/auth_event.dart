part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.showLoginPassword() = ShowLoginPassword;
  const factory AuthEvent.showRegisterPassword() = ShowRegisterPassword;
  const factory AuthEvent.showConformPassword() = ShowConformPassword;
}
