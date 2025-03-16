import 'package:dartz/dartz.dart';
import 'package:post_pilot/service_locator.dart';
import 'package:post_pilot/src/core/usecase/usecase.dart';
import 'package:post_pilot/src/features/post/data/models/update_assets_image_model.dart';
import 'package:post_pilot/src/features/post/domain/repository/post.dart';

class PostUsecase implements UseCase<Either, UpdateAssetsImageModel> {
  @override
  Future<Either> call(UpdateAssetsImageModel params) async {
    return sl<PostRepository>().updatePostText(params);
  }
}
