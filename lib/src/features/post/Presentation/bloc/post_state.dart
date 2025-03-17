part of 'post_bloc.dart';

@freezed
class PostState with _$PostState {
  const factory PostState({
    required Set<int> selectedIndex,
    XFile? image,
    bool? isInstagramSelected,
    bool? isFacebookSelected,
    bool? isTwitterSelected,
    bool? isLinkedinSelected,
    required bool isPostTextEmpty,
    required TextEditingController postTextController,
    required bool isImageEmpty,
    required bool isSocialMediaSelected,
    required bool isEnabledToPost,
  }) = _PostState;

  factory PostState.initial() => PostState(
        selectedIndex: {},
        image: null,
        isInstagramSelected: false,
        isFacebookSelected: false,
        isTwitterSelected: false,
        isLinkedinSelected: false,
        isPostTextEmpty: false,
        postTextController: TextEditingController(text: ''),
        isImageEmpty: false,
        isSocialMediaSelected: false,
        isEnabledToPost: false,
      );
}
