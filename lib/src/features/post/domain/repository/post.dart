import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';
import 'package:post_pilot/src/features/post/data/models/update_assets_text_model.dart';

abstract class PostRepository {
  Future<Either> updatePostText(UpdateAssetsTextModel updateAssetsImageModel);
  Future<Either> uploadImage(XFile image);
}
