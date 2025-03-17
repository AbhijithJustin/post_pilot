import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';
import 'package:post_pilot/service_locator.dart';
import 'package:post_pilot/src/core/network/dio_client.dart';
import 'package:post_pilot/src/core/utils/constants/app_shared_preferences_keys.dart';
import 'package:post_pilot/src/core/utils/constants/app_uipath_data.dart';
import 'package:post_pilot/src/core/utils/constants/app_urls.dart';
import 'package:post_pilot/src/features/post/data/models/start_auto_model.dart';
import 'package:post_pilot/src/features/post/data/models/update_assets_text_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class PostApiService {
  Future<Either> updatePostText(UpdateAssetsTextModel updateAssetsImageModel);
  Future<Either> uploadImage(XFile image);
  Future<Either> startAutomation(StartAutoModel startAutoModel);
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
        AppUrls.updateAssetsUrl,
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
        AppUrls.uploadAssetImageUrl,
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

  Future<Either> updateImage(
      {required String uri, required XFile image}) async {
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

  @override
  Future<Either> startAutomation(StartAutoModel startAutoModel) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final accessToken =
        sharedPreferences.getString(AppSharedPreferencesKeys.tokenKey);
    List<String> selectedSocialMedia = [];
    if (startAutoModel.isInstagramSelected) {
      final instagramData = await instagramPost(accessToken!);
      selectedSocialMedia.add(instagramData.toString());
    }

    if (startAutoModel.isFacebookSelected) {
      final fbData = await facebookPost(accessToken!);
      selectedSocialMedia.add(fbData.toString());
    }
    if (startAutoModel.isTwitterSelected) {
      final twData = await twitterPost(accessToken!);
      selectedSocialMedia.add(twData.toString());
    }
    if (startAutoModel.isLinkedinSelected) {
      final lnData = await linkedinPost(accessToken!);
      selectedSocialMedia.add(lnData.toString());
    }
    if (selectedSocialMedia.isNotEmpty) {
      return Right(selectedSocialMedia);
    } else {
      return Left('No social media selected');
    }
  }

  Future<Either> instagramPost(String accessToken) async {
    try {
      final response = sl<DioClient>().post(AppUrls.startJobUrl,
          options: Options(
            headers: {
              'Authorization': 'Bearer $accessToken',
              'X-UIPATH-OrganizationUnitId':
                  AppUipathData.xUipathOrganizationUnitId,
            },
          ),
          data: {
            "startInfo": {
              "ReleaseKey": "5c42e697-f394-427d-80ac-ff72779e5422",
              "Strategy": "ModernJobsCount",
              "JobsCount": 1,
              "InputArguments": "{}"
            }
          });

      return Right(response);
    } on DioException catch (e) {
      return Left(e.response!.data['message']);
    }
  }

  Future<Either> facebookPost(String accessToken) async {
    try {
      final response = sl<DioClient>().post(AppUrls.startJobUrl,
          options: Options(
            headers: {
              'Authorization': 'Bearer $accessToken',
              'X-UIPATH-OrganizationUnitId':
                  AppUipathData.xUipathOrganizationUnitId,
            },
          ),
          data: {
            "startInfo": {
              "ReleaseKey": "927c0f17-4db3-4d67-a83a-617e1bf5271a",
              "Strategy": "ModernJobsCount",
              "JobsCount": 1,
              "InputArguments": "{}"
            }
          });

      return Right(response);
    } on DioException catch (e) {
      return Left(e.response!.data['message']);
    }
  }

  Future<Either> twitterPost(String accessToken) async {
    try {
      final response = sl<DioClient>().post(AppUrls.startJobUrl,
          options: Options(
            headers: {
              'Authorization': 'Bearer $accessToken',
              'X-UIPATH-OrganizationUnitId':
                  AppUipathData.xUipathOrganizationUnitId,
            },
          ),
          data: {
            "startInfo": {
              "ReleaseKey": "5c42e697-f394-427d-80ac-ff72779e5422",
              "Strategy": "ModernJobsCount",
              "JobsCount": 1,
              "InputArguments": "{}"
            }
          });

      return Right(response);
    } on DioException catch (e) {
      return Left(e.response!.data['message']);
    }
  }
}

Future<Either> linkedinPost(String accessToken) async {
  try {
    final response = sl<DioClient>().post(AppUrls.startJobUrl,
        options: Options(
          headers: {
            'Authorization': 'Bearer $accessToken',
            'X-UIPATH-OrganizationUnitId':
                AppUipathData.xUipathOrganizationUnitId,
          },
        ),
        data: {
          "startInfo": {
            "ReleaseKey": "5c42e697-f394-427d-80ac-ff72779e5422",
            "Strategy": "ModernJobsCount",
            "JobsCount": 1,
            "InputArguments": "{}"
          }
        });

    return Right(response);
  } on DioException catch (e) {
    return Left(e.response!.data['message']);
  }
}
