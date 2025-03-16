import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';
import 'package:post_pilot/service_locator.dart';
import 'package:post_pilot/src/core/utils/constants/app_shared_preferences_keys.dart';
import 'package:post_pilot/src/features/auth/data/models/token_req_params.dart';
import 'package:post_pilot/src/features/auth/domain/usecases/token.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';

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
    on<TokenSaveToSharedPreferences>((event, emit) async {
      final result = await sl<TokenUseCase>().call(TokenReqParams());
      Logger log = Logger();
      result.fold(
        (error) {
          log.e("Error: $error");
        },
        (token) async {
          log.d("!!!This is new token: $token");

          // Save token to shared preferences
          final sharedPreferences = await SharedPreferences.getInstance();
          await sharedPreferences.setString(
              AppSharedPreferencesKeys.tokenKey, token);
        },
      );
    });
    _startTokenTimer();
  }
  Timer? _tokenTimer;
  void _startTokenTimer() {
    _tokenTimer?.cancel(); // Cancel any existing timer
    _tokenTimer = Timer.periodic(Duration(minutes: 50), (timer) {
      add(TokenSaveToSharedPreferences());
    });
  }

  @override
  Future<void> close() {
    _tokenTimer?.cancel(); // Cancel the timer when the bloc is closed
    return super.close();
  }
}
