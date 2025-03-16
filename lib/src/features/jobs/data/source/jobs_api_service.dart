import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:post_pilot/src/core/network/dio_client.dart';
import 'package:post_pilot/src/core/utils/constants/app_shared_preferences_keys.dart';
import 'package:post_pilot/src/core/utils/constants/app_uipath_data.dart';
import 'package:post_pilot/src/core/utils/constants/app_urls.dart';
import 'package:post_pilot/service_locator.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class JobsApiService {
  Future<Either> getJobs();
}

class JobsApiServiceImpl implements JobsApiService {
  @override
  Future<Either> getJobs() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final accessToken =
        sharedPreferences.getString(AppSharedPreferencesKeys.tokenKey);
    try {
      final response = await sl<DioClient>().get(
        AppUrls.allJobsUrl,
        options: Options(
          headers: {
            'Authorization': 'Bearer $accessToken',
            'X-UIPATH-OrganizationUnitId':
                AppUipathData.xUipathOrganizationUnitId,
          },
        ),
      );

      final data = response.data['value'];

      return Right(data);
    } on DioException catch (e) {
      return Left(e.response!.data['message']);
    }
  }
}
