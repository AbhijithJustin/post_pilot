import 'package:dartz/dartz.dart';
import 'package:post_pilot/service_locator.dart';
import 'package:post_pilot/src/features/auth/data/models/token_req_params.dart';
import 'package:post_pilot/src/features/auth/data/source/auth_api_service.dart';
import 'package:post_pilot/src/features/auth/domain/repository/auth.dart';

class AuthRepositoryImpl extends AuthRepository {
  @override
  Future<Either> getAuthToken(TokenReqParams tokenReqParams) {
    return sl<AuthApiService>().getAuthToken(tokenReqParams);
  }
}
