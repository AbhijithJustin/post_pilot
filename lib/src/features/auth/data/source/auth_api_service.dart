import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:post_pilot/service_locator.dart';
import 'package:post_pilot/src/core/network/dio_client.dart';
import 'package:post_pilot/src/core/utils/constants/app_urls.dart';
import 'package:post_pilot/src/features/auth/data/models/token_req_params.dart';

abstract class AuthApiService {
  Future<Either> getAuthToken(TokenReqParams tokenReqParams);
}

class AuthApiServiceImpl implements AuthApiService {
  @override
  Future<Either> getAuthToken(TokenReqParams tokenReqParams) async {
    try {
      final response = await sl<DioClient>().post(
        AppUrls.tokenUrl,
        options: Options(
          headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
          },
        ),
        data: tokenReqParams.toMap(),
      );
      final token = response.data['access_token'];

      return Right(token);
    } on DioException catch (e) {
      return Left(e.response!.data['message']);
    }
  }
}
