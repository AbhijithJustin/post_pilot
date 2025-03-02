part of 'post_bloc.dart';

@freezed
class PostEvent with _$PostEvent {
  const factory PostEvent.socialMediaSelector(int index) = SocialMediaSelector;
  const factory PostEvent.uploadPhoto() = UploadPhoto;
}
