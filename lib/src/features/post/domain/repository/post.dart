import 'package:dartz/dartz.dart';
import 'package:post_pilot/src/features/post/data/models/update_assets_image_model.dart';

abstract class PostRepository {
  Future<Either> updatePostText(UpdateAssetsImageModel updateAssetsImageModel);
}
