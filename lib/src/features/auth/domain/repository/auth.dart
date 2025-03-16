import 'package:dartz/dartz.dart';
import 'package:post_pilot/src/features/auth/data/models/token_req_params.dart';

abstract class AuthRepository {
  Future<Either> getAuthToken(TokenReqParams tokenReqParams);
}
