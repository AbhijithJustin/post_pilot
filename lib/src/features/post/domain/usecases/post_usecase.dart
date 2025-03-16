import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';
import 'package:post_pilot/service_locator.dart';
import 'package:post_pilot/src/core/usecase/usecase.dart';
import 'package:post_pilot/src/features/post/data/models/update_assets_text_model.dart';
import 'package:post_pilot/src/features/post/domain/repository/post.dart';

class PostUsecase implements UseCase<Either, UpdateAssetsTextModel> {
  @override
  Future<Either> call(UpdateAssetsTextModel params) async {
    return sl<PostRepository>().updatePostText(params);
  }
}

class PostUsecase2 implements UseCase<Either, XFile> {
  @override
  Future<Either> call(XFile image) async {
    return sl<PostRepository>().uploadImage(image);
  }
}
