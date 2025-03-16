import 'dart:convert';

import 'package:post_pilot/src/core/utils/constants/app_uipath_data.dart';

class UpdateAssetsImageModel {
  String? name;
  String? valueScope;
  String? valueType;
  String? stringValue;
  int? id;

  UpdateAssetsImageModel({
    this.name = 'PostText',
    this.valueScope = 'Global',
    this.valueType = 'Text',
    required this.stringValue,
    this.id = AppUipathData.assetPostTextId,
  });

  factory UpdateAssetsImageModel.fromMap(Map<String, dynamic> data) {
    return UpdateAssetsImageModel(
      name: data['Name'] as String?,
      valueScope: data['ValueScope'] as String?,
      valueType: data['ValueType'] as String?,
      stringValue: data['StringValue'] as String?,
      id: data['Id'] as int?,
    );
  }

  Map<String, dynamic> toMap() => {
        'Name': name,
        'ValueScope': valueScope,
        'ValueType': valueType,
        'StringValue': stringValue,
        'Id': id,
      };

  /// `dart:convert`
  ///
  /// Converts [UpdateAssetsImageModel] to a JSON string.
  String toJson() => json.encode(toMap());
}
