import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';
import 'package:post_pilot/service_locator.dart';
import 'package:post_pilot/src/core/network/dio_client.dart';
import 'package:post_pilot/src/core/utils/constants/app_shared_preferences_keys.dart';
import 'package:post_pilot/src/core/utils/constants/app_uipath_data.dart';
import 'package:post_pilot/src/core/utils/constants/app_urls.dart';
import 'package:post_pilot/src/features/post/data/models/update_assets_text_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class PostApiService {
  Future<Either> updatePostText(UpdateAssetsTextModel updateAssetsImageModel);
  Future<Either> uploadImage(XFile image);
}

class PostApiServiceImpl extends PostApiService {
  @override
  Future<Either> updatePostText(
      UpdateAssetsTextModel updateAssetsImageModel) async {
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

  @override
  Future<Either> uploadImage(XFile image) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final accessToken =
        sharedPreferences.getString(AppSharedPreferencesKeys.tokenKey);
    try {
      final response = await sl<DioClient>().get(
        AppUrls.uploadAssetImage,
        options: Options(headers: {
          'Authorization': 'Bearer $accessToken',
          'X-UIPATH-OrganizationUnitId':
              AppUipathData.xUipathOrganizationUnitId,
        }),
      );
      final uri = response.data['Uri'];

      final data = updateImage(uri: uri, image: image);
      return Right(data);
    } on DioException catch (e) {
      return Left(e.response!.data['message']);
    }
  }
}

Future<Either> updateImage({required String uri, required XFile image}) async {
  int fileLength = await image.length();
  Uint8List fileBytes = await image.readAsBytes();
  try {
    final response = sl<DioClient>().put(uri,
        options: Options(headers: {
          'x-ms-blob-type': 'BlockBlob',
          'Content-Type': 'image/jpeg',
          'Content-Length': fileLength.toString(),
        }),
        data: Stream.fromIterable(fileBytes.map((e) => [e])));
    return Right(response);
  } on DioException catch (e) {
    return Left(e.response!.data['message']);
  }
}
