import 'package:post_pilot/src/core/utils/constants/app_uipath_data.dart';

class AppUrls {
  static const String orchestratorUrl =
      "https://cloud.uipath.com/smartbortyfd/DefaultTenant/orchestrator_/";
  static const String tokenUrl =
      "https://cloud.uipath.com/identity_/connect/token";
  static const String allJobsUrl = "${orchestratorUrl}odata/Jobs";
  static const String updateAssets =
      "${orchestratorUrl}odata/Assets(${AppUipathData.assetPostTextId})";
  static const String uploadAssetImage =
      "https://cloud.uipath.com/smartbortyfd/DefaultTenant/orchestrator_/odata/Buckets(127248)/UiPath.Server.Configuration.OData.GetWriteUri?path=image.jpg&expiryInMinutes=0";
}
