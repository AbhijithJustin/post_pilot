part of 'post_bloc.dart';

@freezed
class PostEvent with _$PostEvent {
  const factory PostEvent.socialMediaSelector(int index) = SocialMediaSelector;
  const factory PostEvent.uploadPhoto() = UploadPhoto;
  const factory PostEvent.postTextNotifier() = PostTextNotifier;
  const factory PostEvent.updatePostText() = UpdatePostText;
  const factory PostEvent.uploadImageToOrchestrator() =
      UploadImageToOrchestrator;
  const factory PostEvent.startAutomation() = StartAutomation;
  const factory PostEvent.socialMediaSelectorNotifier() =
      SocialMediaSelectorNotifier;
  const factory PostEvent.slideButtonAction(bool value) = SlideButtonAction;
}
