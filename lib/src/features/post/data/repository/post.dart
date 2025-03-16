import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';
import 'package:post_pilot/service_locator.dart';
import 'package:post_pilot/src/features/post/data/models/update_assets_text_model.dart';
import 'package:post_pilot/src/features/post/data/source/post_api_service.dart';
import 'package:post_pilot/src/features/post/domain/repository/post.dart';

class PostRepositoryImpl extends PostRepository {
  @override
  Future<Either> updatePostText(UpdateAssetsTextModel updateAssetsImageModel) {
    return sl<PostApiService>().updatePostText(updateAssetsImageModel);
  }

  @override
  Future<Either> uploadImage(XFile image) {
    return sl<PostApiService>().uploadImage(image);
  }
}
