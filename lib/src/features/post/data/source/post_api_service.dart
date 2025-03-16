import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:post_pilot/service_locator.dart';
import 'package:post_pilot/src/core/network/dio_client.dart';
import 'package:post_pilot/src/core/utils/constants/app_shared_preferences_keys.dart';
import 'package:post_pilot/src/core/utils/constants/app_uipath_data.dart';
import 'package:post_pilot/src/core/utils/constants/app_urls.dart';
import 'package:post_pilot/src/features/post/data/models/update_assets_image_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class PostApiService {
  Future<Either> updatePostText(UpdateAssetsImageModel updateAssetsImageModel);
}

class PostApiServiceImpl extends PostApiService {
  @override
  Future<Either> updatePostText(
      UpdateAssetsImageModel updateAssetsImageModel) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final accessToken =
        sharedPreferences.getString(AppSharedPreferencesKeys.tokenKey);
    try {
      final response = await sl<DioClient>().put(
        AppUrls.updateAssets,
        options: Options(
          headers: {
            'Authorization': 'Bearer $accessToken',
            'X-UIPATH-OrganizationUnitId':
                AppUipathData.xUipathOrganizationUnitId,
          },
        ),
        data: updateAssetsImageModel.toMap(),
      );
      return Right(response.data);
    } on DioException catch (e) {
      return Left(e.response!.data['message']);
    }
  }
}
