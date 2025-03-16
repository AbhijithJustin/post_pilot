import 'package:dartz/dartz.dart';
import 'package:post_pilot/service_locator.dart';
import 'package:post_pilot/src/core/usecase/usecase.dart';
import 'package:post_pilot/src/features/auth/data/models/token_req_params.dart';
import 'package:post_pilot/src/features/auth/domain/repository/auth.dart';

class TokenUseCase implements UseCase<Either, TokenReqParams> {
  @override
  Future<Either> call(TokenReqParams? tokenReqParams) async {
    return sl<AuthRepository>().getAuthToken(tokenReqParams!);
  }
}
