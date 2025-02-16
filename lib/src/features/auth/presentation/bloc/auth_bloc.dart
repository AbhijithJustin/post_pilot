import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthState.initial()) {
    on<ShowLoginPassword>((event, emit) {
      return emit(state.copyWith(showPassword: !state.showPassword));
    });

    on<ShowRegisterPassword>((event, emit) {
      return emit(
          state.copyWith(showRegisterPassword: !state.showRegisterPassword));
    });
    on<ShowConformPassword>((event, emit) {
      return emit(
          state.copyWith(showConformPassword: !state.showConformPassword));
    });
  }
}
