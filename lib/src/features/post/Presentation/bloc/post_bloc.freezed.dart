// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PostEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) socialMediaSelector,
    required TResult Function() uploadPhoto,
    required TResult Function() postTextNotifier,
    required TResult Function() updatePostText,
    required TResult Function() uploadImageToOrchestrator,
    required TResult Function() startAutomation,
    required TResult Function() socialMediaSelectorNotifier,
    required TResult Function(bool value) slideButtonAction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? socialMediaSelector,
    TResult? Function()? uploadPhoto,
    TResult? Function()? postTextNotifier,
    TResult? Function()? updatePostText,
    TResult? Function()? uploadImageToOrchestrator,
    TResult? Function()? startAutomation,
    TResult? Function()? socialMediaSelectorNotifier,
    TResult? Function(bool value)? slideButtonAction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? socialMediaSelector,
    TResult Function()? uploadPhoto,
    TResult Function()? postTextNotifier,
    TResult Function()? updatePostText,
    TResult Function()? uploadImageToOrchestrator,
    TResult Function()? startAutomation,
    TResult Function()? socialMediaSelectorNotifier,
    TResult Function(bool value)? slideButtonAction,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SocialMediaSelector value) socialMediaSelector,
    required TResult Function(UploadPhoto value) uploadPhoto,
    required TResult Function(PostTextNotifier value) postTextNotifier,
    required TResult Function(UpdatePostText value) updatePostText,
    required TResult Function(UploadImageToOrchestrator value)
        uploadImageToOrchestrator,
    required TResult Function(StartAutomation value) startAutomation,
    required TResult Function(SocialMediaSelectorNotifier value)
        socialMediaSelectorNotifier,
    required TResult Function(SlideButtonAction value) slideButtonAction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SocialMediaSelector value)? socialMediaSelector,
    TResult? Function(UploadPhoto value)? uploadPhoto,
    TResult? Function(PostTextNotifier value)? postTextNotifier,
    TResult? Function(UpdatePostText value)? updatePostText,
    TResult? Function(UploadImageToOrchestrator value)?
        uploadImageToOrchestrator,
    TResult? Function(StartAutomation value)? startAutomation,
    TResult? Function(SocialMediaSelectorNotifier value)?
        socialMediaSelectorNotifier,
    TResult? Function(SlideButtonAction value)? slideButtonAction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SocialMediaSelector value)? socialMediaSelector,
    TResult Function(UploadPhoto value)? uploadPhoto,
    TResult Function(PostTextNotifier value)? postTextNotifier,
    TResult Function(UpdatePostText value)? updatePostText,
    TResult Function(UploadImageToOrchestrator value)?
        uploadImageToOrchestrator,
    TResult Function(StartAutomation value)? startAutomation,
    TResult Function(SocialMediaSelectorNotifier value)?
        socialMediaSelectorNotifier,
    TResult Function(SlideButtonAction value)? slideButtonAction,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostEventCopyWith<$Res> {
  factory $PostEventCopyWith(PostEvent value, $Res Function(PostEvent) then) =
      _$PostEventCopyWithImpl<$Res, PostEvent>;
}

/// @nodoc
class _$PostEventCopyWithImpl<$Res, $Val extends PostEvent>
    implements $PostEventCopyWith<$Res> {
  _$PostEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SocialMediaSelectorImplCopyWith<$Res> {
  factory _$$SocialMediaSelectorImplCopyWith(_$SocialMediaSelectorImpl value,
          $Res Function(_$SocialMediaSelectorImpl) then) =
      __$$SocialMediaSelectorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$SocialMediaSelectorImplCopyWithImpl<$Res>
    extends _$PostEventCopyWithImpl<$Res, _$SocialMediaSelectorImpl>
    implements _$$SocialMediaSelectorImplCopyWith<$Res> {
  __$$SocialMediaSelectorImplCopyWithImpl(_$SocialMediaSelectorImpl _value,
      $Res Function(_$SocialMediaSelectorImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$SocialMediaSelectorImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SocialMediaSelectorImpl implements SocialMediaSelector {
  const _$SocialMediaSelectorImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'PostEvent.socialMediaSelector(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocialMediaSelectorImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of PostEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SocialMediaSelectorImplCopyWith<_$SocialMediaSelectorImpl> get copyWith =>
      __$$SocialMediaSelectorImplCopyWithImpl<_$SocialMediaSelectorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) socialMediaSelector,
    required TResult Function() uploadPhoto,
    required TResult Function() postTextNotifier,
    required TResult Function() updatePostText,
    required TResult Function() uploadImageToOrchestrator,
    required TResult Function() startAutomation,
    required TResult Function() socialMediaSelectorNotifier,
    required TResult Function(bool value) slideButtonAction,
  }) {
    return socialMediaSelector(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? socialMediaSelector,
    TResult? Function()? uploadPhoto,
    TResult? Function()? postTextNotifier,
    TResult? Function()? updatePostText,
    TResult? Function()? uploadImageToOrchestrator,
    TResult? Function()? startAutomation,
    TResult? Function()? socialMediaSelectorNotifier,
    TResult? Function(bool value)? slideButtonAction,
  }) {
    return socialMediaSelector?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? socialMediaSelector,
    TResult Function()? uploadPhoto,
    TResult Function()? postTextNotifier,
    TResult Function()? updatePostText,
    TResult Function()? uploadImageToOrchestrator,
    TResult Function()? startAutomation,
    TResult Function()? socialMediaSelectorNotifier,
    TResult Function(bool value)? slideButtonAction,
    required TResult orElse(),
  }) {
    if (socialMediaSelector != null) {
      return socialMediaSelector(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SocialMediaSelector value) socialMediaSelector,
    required TResult Function(UploadPhoto value) uploadPhoto,
    required TResult Function(PostTextNotifier value) postTextNotifier,
    required TResult Function(UpdatePostText value) updatePostText,
    required TResult Function(UploadImageToOrchestrator value)
        uploadImageToOrchestrator,
    required TResult Function(StartAutomation value) startAutomation,
    required TResult Function(SocialMediaSelectorNotifier value)
        socialMediaSelectorNotifier,
    required TResult Function(SlideButtonAction value) slideButtonAction,
  }) {
    return socialMediaSelector(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SocialMediaSelector value)? socialMediaSelector,
    TResult? Function(UploadPhoto value)? uploadPhoto,
    TResult? Function(PostTextNotifier value)? postTextNotifier,
    TResult? Function(UpdatePostText value)? updatePostText,
    TResult? Function(UploadImageToOrchestrator value)?
        uploadImageToOrchestrator,
    TResult? Function(StartAutomation value)? startAutomation,
    TResult? Function(SocialMediaSelectorNotifier value)?
        socialMediaSelectorNotifier,
    TResult? Function(SlideButtonAction value)? slideButtonAction,
  }) {
    return socialMediaSelector?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SocialMediaSelector value)? socialMediaSelector,
    TResult Function(UploadPhoto value)? uploadPhoto,
    TResult Function(PostTextNotifier value)? postTextNotifier,
    TResult Function(UpdatePostText value)? updatePostText,
    TResult Function(UploadImageToOrchestrator value)?
        uploadImageToOrchestrator,
    TResult Function(StartAutomation value)? startAutomation,
    TResult Function(SocialMediaSelectorNotifier value)?
        socialMediaSelectorNotifier,
    TResult Function(SlideButtonAction value)? slideButtonAction,
    required TResult orElse(),
  }) {
    if (socialMediaSelector != null) {
      return socialMediaSelector(this);
    }
    return orElse();
  }
}

abstract class SocialMediaSelector implements PostEvent {
  const factory SocialMediaSelector(final int index) =
      _$SocialMediaSelectorImpl;

  int get index;

  /// Create a copy of PostEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SocialMediaSelectorImplCopyWith<_$SocialMediaSelectorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UploadPhotoImplCopyWith<$Res> {
  factory _$$UploadPhotoImplCopyWith(
          _$UploadPhotoImpl value, $Res Function(_$UploadPhotoImpl) then) =
      __$$UploadPhotoImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UploadPhotoImplCopyWithImpl<$Res>
    extends _$PostEventCopyWithImpl<$Res, _$UploadPhotoImpl>
    implements _$$UploadPhotoImplCopyWith<$Res> {
  __$$UploadPhotoImplCopyWithImpl(
      _$UploadPhotoImpl _value, $Res Function(_$UploadPhotoImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UploadPhotoImpl implements UploadPhoto {
  const _$UploadPhotoImpl();

  @override
  String toString() {
    return 'PostEvent.uploadPhoto()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UploadPhotoImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) socialMediaSelector,
    required TResult Function() uploadPhoto,
    required TResult Function() postTextNotifier,
    required TResult Function() updatePostText,
    required TResult Function() uploadImageToOrchestrator,
    required TResult Function() startAutomation,
    required TResult Function() socialMediaSelectorNotifier,
    required TResult Function(bool value) slideButtonAction,
  }) {
    return uploadPhoto();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? socialMediaSelector,
    TResult? Function()? uploadPhoto,
    TResult? Function()? postTextNotifier,
    TResult? Function()? updatePostText,
    TResult? Function()? uploadImageToOrchestrator,
    TResult? Function()? startAutomation,
    TResult? Function()? socialMediaSelectorNotifier,
    TResult? Function(bool value)? slideButtonAction,
  }) {
    return uploadPhoto?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? socialMediaSelector,
    TResult Function()? uploadPhoto,
    TResult Function()? postTextNotifier,
    TResult Function()? updatePostText,
    TResult Function()? uploadImageToOrchestrator,
    TResult Function()? startAutomation,
    TResult Function()? socialMediaSelectorNotifier,
    TResult Function(bool value)? slideButtonAction,
    required TResult orElse(),
  }) {
    if (uploadPhoto != null) {
      return uploadPhoto();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SocialMediaSelector value) socialMediaSelector,
    required TResult Function(UploadPhoto value) uploadPhoto,
    required TResult Function(PostTextNotifier value) postTextNotifier,
    required TResult Function(UpdatePostText value) updatePostText,
    required TResult Function(UploadImageToOrchestrator value)
        uploadImageToOrchestrator,
    required TResult Function(StartAutomation value) startAutomation,
    required TResult Function(SocialMediaSelectorNotifier value)
        socialMediaSelectorNotifier,
    required TResult Function(SlideButtonAction value) slideButtonAction,
  }) {
    return uploadPhoto(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SocialMediaSelector value)? socialMediaSelector,
    TResult? Function(UploadPhoto value)? uploadPhoto,
    TResult? Function(PostTextNotifier value)? postTextNotifier,
    TResult? Function(UpdatePostText value)? updatePostText,
    TResult? Function(UploadImageToOrchestrator value)?
        uploadImageToOrchestrator,
    TResult? Function(StartAutomation value)? startAutomation,
    TResult? Function(SocialMediaSelectorNotifier value)?
        socialMediaSelectorNotifier,
    TResult? Function(SlideButtonAction value)? slideButtonAction,
  }) {
    return uploadPhoto?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SocialMediaSelector value)? socialMediaSelector,
    TResult Function(UploadPhoto value)? uploadPhoto,
    TResult Function(PostTextNotifier value)? postTextNotifier,
    TResult Function(UpdatePostText value)? updatePostText,
    TResult Function(UploadImageToOrchestrator value)?
        uploadImageToOrchestrator,
    TResult Function(StartAutomation value)? startAutomation,
    TResult Function(SocialMediaSelectorNotifier value)?
        socialMediaSelectorNotifier,
    TResult Function(SlideButtonAction value)? slideButtonAction,
    required TResult orElse(),
  }) {
    if (uploadPhoto != null) {
      return uploadPhoto(this);
    }
    return orElse();
  }
}

abstract class UploadPhoto implements PostEvent {
  const factory UploadPhoto() = _$UploadPhotoImpl;
}

/// @nodoc
abstract class _$$PostTextNotifierImplCopyWith<$Res> {
  factory _$$PostTextNotifierImplCopyWith(_$PostTextNotifierImpl value,
          $Res Function(_$PostTextNotifierImpl) then) =
      __$$PostTextNotifierImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PostTextNotifierImplCopyWithImpl<$Res>
    extends _$PostEventCopyWithImpl<$Res, _$PostTextNotifierImpl>
    implements _$$PostTextNotifierImplCopyWith<$Res> {
  __$$PostTextNotifierImplCopyWithImpl(_$PostTextNotifierImpl _value,
      $Res Function(_$PostTextNotifierImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PostTextNotifierImpl implements PostTextNotifier {
  const _$PostTextNotifierImpl();

  @override
  String toString() {
    return 'PostEvent.postTextNotifier()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PostTextNotifierImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) socialMediaSelector,
    required TResult Function() uploadPhoto,
    required TResult Function() postTextNotifier,
    required TResult Function() updatePostText,
    required TResult Function() uploadImageToOrchestrator,
    required TResult Function() startAutomation,
    required TResult Function() socialMediaSelectorNotifier,
    required TResult Function(bool value) slideButtonAction,
  }) {
    return postTextNotifier();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? socialMediaSelector,
    TResult? Function()? uploadPhoto,
    TResult? Function()? postTextNotifier,
    TResult? Function()? updatePostText,
    TResult? Function()? uploadImageToOrchestrator,
    TResult? Function()? startAutomation,
    TResult? Function()? socialMediaSelectorNotifier,
    TResult? Function(bool value)? slideButtonAction,
  }) {
    return postTextNotifier?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? socialMediaSelector,
    TResult Function()? uploadPhoto,
    TResult Function()? postTextNotifier,
    TResult Function()? updatePostText,
    TResult Function()? uploadImageToOrchestrator,
    TResult Function()? startAutomation,
    TResult Function()? socialMediaSelectorNotifier,
    TResult Function(bool value)? slideButtonAction,
    required TResult orElse(),
  }) {
    if (postTextNotifier != null) {
      return postTextNotifier();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SocialMediaSelector value) socialMediaSelector,
    required TResult Function(UploadPhoto value) uploadPhoto,
    required TResult Function(PostTextNotifier value) postTextNotifier,
    required TResult Function(UpdatePostText value) updatePostText,
    required TResult Function(UploadImageToOrchestrator value)
        uploadImageToOrchestrator,
    required TResult Function(StartAutomation value) startAutomation,
    required TResult Function(SocialMediaSelectorNotifier value)
        socialMediaSelectorNotifier,
    required TResult Function(SlideButtonAction value) slideButtonAction,
  }) {
    return postTextNotifier(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SocialMediaSelector value)? socialMediaSelector,
    TResult? Function(UploadPhoto value)? uploadPhoto,
    TResult? Function(PostTextNotifier value)? postTextNotifier,
    TResult? Function(UpdatePostText value)? updatePostText,
    TResult? Function(UploadImageToOrchestrator value)?
        uploadImageToOrchestrator,
    TResult? Function(StartAutomation value)? startAutomation,
    TResult? Function(SocialMediaSelectorNotifier value)?
        socialMediaSelectorNotifier,
    TResult? Function(SlideButtonAction value)? slideButtonAction,
  }) {
    return postTextNotifier?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SocialMediaSelector value)? socialMediaSelector,
    TResult Function(UploadPhoto value)? uploadPhoto,
    TResult Function(PostTextNotifier value)? postTextNotifier,
    TResult Function(UpdatePostText value)? updatePostText,
    TResult Function(UploadImageToOrchestrator value)?
        uploadImageToOrchestrator,
    TResult Function(StartAutomation value)? startAutomation,
    TResult Function(SocialMediaSelectorNotifier value)?
        socialMediaSelectorNotifier,
    TResult Function(SlideButtonAction value)? slideButtonAction,
    required TResult orElse(),
  }) {
    if (postTextNotifier != null) {
      return postTextNotifier(this);
    }
    return orElse();
  }
}

abstract class PostTextNotifier implements PostEvent {
  const factory PostTextNotifier() = _$PostTextNotifierImpl;
}

/// @nodoc
abstract class _$$UpdatePostTextImplCopyWith<$Res> {
  factory _$$UpdatePostTextImplCopyWith(_$UpdatePostTextImpl value,
          $Res Function(_$UpdatePostTextImpl) then) =
      __$$UpdatePostTextImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdatePostTextImplCopyWithImpl<$Res>
    extends _$PostEventCopyWithImpl<$Res, _$UpdatePostTextImpl>
    implements _$$UpdatePostTextImplCopyWith<$Res> {
  __$$UpdatePostTextImplCopyWithImpl(
      _$UpdatePostTextImpl _value, $Res Function(_$UpdatePostTextImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UpdatePostTextImpl implements UpdatePostText {
  const _$UpdatePostTextImpl();

  @override
  String toString() {
    return 'PostEvent.updatePostText()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdatePostTextImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) socialMediaSelector,
    required TResult Function() uploadPhoto,
    required TResult Function() postTextNotifier,
    required TResult Function() updatePostText,
    required TResult Function() uploadImageToOrchestrator,
    required TResult Function() startAutomation,
    required TResult Function() socialMediaSelectorNotifier,
    required TResult Function(bool value) slideButtonAction,
  }) {
    return updatePostText();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? socialMediaSelector,
    TResult? Function()? uploadPhoto,
    TResult? Function()? postTextNotifier,
    TResult? Function()? updatePostText,
    TResult? Function()? uploadImageToOrchestrator,
    TResult? Function()? startAutomation,
    TResult? Function()? socialMediaSelectorNotifier,
    TResult? Function(bool value)? slideButtonAction,
  }) {
    return updatePostText?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? socialMediaSelector,
    TResult Function()? uploadPhoto,
    TResult Function()? postTextNotifier,
    TResult Function()? updatePostText,
    TResult Function()? uploadImageToOrchestrator,
    TResult Function()? startAutomation,
    TResult Function()? socialMediaSelectorNotifier,
    TResult Function(bool value)? slideButtonAction,
    required TResult orElse(),
  }) {
    if (updatePostText != null) {
      return updatePostText();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SocialMediaSelector value) socialMediaSelector,
    required TResult Function(UploadPhoto value) uploadPhoto,
    required TResult Function(PostTextNotifier value) postTextNotifier,
    required TResult Function(UpdatePostText value) updatePostText,
    required TResult Function(UploadImageToOrchestrator value)
        uploadImageToOrchestrator,
    required TResult Function(StartAutomation value) startAutomation,
    required TResult Function(SocialMediaSelectorNotifier value)
        socialMediaSelectorNotifier,
    required TResult Function(SlideButtonAction value) slideButtonAction,
  }) {
    return updatePostText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SocialMediaSelector value)? socialMediaSelector,
    TResult? Function(UploadPhoto value)? uploadPhoto,
    TResult? Function(PostTextNotifier value)? postTextNotifier,
    TResult? Function(UpdatePostText value)? updatePostText,
    TResult? Function(UploadImageToOrchestrator value)?
        uploadImageToOrchestrator,
    TResult? Function(StartAutomation value)? startAutomation,
    TResult? Function(SocialMediaSelectorNotifier value)?
        socialMediaSelectorNotifier,
    TResult? Function(SlideButtonAction value)? slideButtonAction,
  }) {
    return updatePostText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SocialMediaSelector value)? socialMediaSelector,
    TResult Function(UploadPhoto value)? uploadPhoto,
    TResult Function(PostTextNotifier value)? postTextNotifier,
    TResult Function(UpdatePostText value)? updatePostText,
    TResult Function(UploadImageToOrchestrator value)?
        uploadImageToOrchestrator,
    TResult Function(StartAutomation value)? startAutomation,
    TResult Function(SocialMediaSelectorNotifier value)?
        socialMediaSelectorNotifier,
    TResult Function(SlideButtonAction value)? slideButtonAction,
    required TResult orElse(),
  }) {
    if (updatePostText != null) {
      return updatePostText(this);
    }
    return orElse();
  }
}

abstract class UpdatePostText implements PostEvent {
  const factory UpdatePostText() = _$UpdatePostTextImpl;
}

/// @nodoc
abstract class _$$UploadImageToOrchestratorImplCopyWith<$Res> {
  factory _$$UploadImageToOrchestratorImplCopyWith(
          _$UploadImageToOrchestratorImpl value,
          $Res Function(_$UploadImageToOrchestratorImpl) then) =
      __$$UploadImageToOrchestratorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UploadImageToOrchestratorImplCopyWithImpl<$Res>
    extends _$PostEventCopyWithImpl<$Res, _$UploadImageToOrchestratorImpl>
    implements _$$UploadImageToOrchestratorImplCopyWith<$Res> {
  __$$UploadImageToOrchestratorImplCopyWithImpl(
      _$UploadImageToOrchestratorImpl _value,
      $Res Function(_$UploadImageToOrchestratorImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UploadImageToOrchestratorImpl implements UploadImageToOrchestrator {
  const _$UploadImageToOrchestratorImpl();

  @override
  String toString() {
    return 'PostEvent.uploadImageToOrchestrator()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadImageToOrchestratorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) socialMediaSelector,
    required TResult Function() uploadPhoto,
    required TResult Function() postTextNotifier,
    required TResult Function() updatePostText,
    required TResult Function() uploadImageToOrchestrator,
    required TResult Function() startAutomation,
    required TResult Function() socialMediaSelectorNotifier,
    required TResult Function(bool value) slideButtonAction,
  }) {
    return uploadImageToOrchestrator();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? socialMediaSelector,
    TResult? Function()? uploadPhoto,
    TResult? Function()? postTextNotifier,
    TResult? Function()? updatePostText,
    TResult? Function()? uploadImageToOrchestrator,
    TResult? Function()? startAutomation,
    TResult? Function()? socialMediaSelectorNotifier,
    TResult? Function(bool value)? slideButtonAction,
  }) {
    return uploadImageToOrchestrator?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? socialMediaSelector,
    TResult Function()? uploadPhoto,
    TResult Function()? postTextNotifier,
    TResult Function()? updatePostText,
    TResult Function()? uploadImageToOrchestrator,
    TResult Function()? startAutomation,
    TResult Function()? socialMediaSelectorNotifier,
    TResult Function(bool value)? slideButtonAction,
    required TResult orElse(),
  }) {
    if (uploadImageToOrchestrator != null) {
      return uploadImageToOrchestrator();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SocialMediaSelector value) socialMediaSelector,
    required TResult Function(UploadPhoto value) uploadPhoto,
    required TResult Function(PostTextNotifier value) postTextNotifier,
    required TResult Function(UpdatePostText value) updatePostText,
    required TResult Function(UploadImageToOrchestrator value)
        uploadImageToOrchestrator,
    required TResult Function(StartAutomation value) startAutomation,
    required TResult Function(SocialMediaSelectorNotifier value)
        socialMediaSelectorNotifier,
    required TResult Function(SlideButtonAction value) slideButtonAction,
  }) {
    return uploadImageToOrchestrator(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SocialMediaSelector value)? socialMediaSelector,
    TResult? Function(UploadPhoto value)? uploadPhoto,
    TResult? Function(PostTextNotifier value)? postTextNotifier,
    TResult? Function(UpdatePostText value)? updatePostText,
    TResult? Function(UploadImageToOrchestrator value)?
        uploadImageToOrchestrator,
    TResult? Function(StartAutomation value)? startAutomation,
    TResult? Function(SocialMediaSelectorNotifier value)?
        socialMediaSelectorNotifier,
    TResult? Function(SlideButtonAction value)? slideButtonAction,
  }) {
    return uploadImageToOrchestrator?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SocialMediaSelector value)? socialMediaSelector,
    TResult Function(UploadPhoto value)? uploadPhoto,
    TResult Function(PostTextNotifier value)? postTextNotifier,
    TResult Function(UpdatePostText value)? updatePostText,
    TResult Function(UploadImageToOrchestrator value)?
        uploadImageToOrchestrator,
    TResult Function(StartAutomation value)? startAutomation,
    TResult Function(SocialMediaSelectorNotifier value)?
        socialMediaSelectorNotifier,
    TResult Function(SlideButtonAction value)? slideButtonAction,
    required TResult orElse(),
  }) {
    if (uploadImageToOrchestrator != null) {
      return uploadImageToOrchestrator(this);
    }
    return orElse();
  }
}

abstract class UploadImageToOrchestrator implements PostEvent {
  const factory UploadImageToOrchestrator() = _$UploadImageToOrchestratorImpl;
}

/// @nodoc
abstract class _$$StartAutomationImplCopyWith<$Res> {
  factory _$$StartAutomationImplCopyWith(_$StartAutomationImpl value,
          $Res Function(_$StartAutomationImpl) then) =
      __$$StartAutomationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartAutomationImplCopyWithImpl<$Res>
    extends _$PostEventCopyWithImpl<$Res, _$StartAutomationImpl>
    implements _$$StartAutomationImplCopyWith<$Res> {
  __$$StartAutomationImplCopyWithImpl(
      _$StartAutomationImpl _value, $Res Function(_$StartAutomationImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartAutomationImpl implements StartAutomation {
  const _$StartAutomationImpl();

  @override
  String toString() {
    return 'PostEvent.startAutomation()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartAutomationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) socialMediaSelector,
    required TResult Function() uploadPhoto,
    required TResult Function() postTextNotifier,
    required TResult Function() updatePostText,
    required TResult Function() uploadImageToOrchestrator,
    required TResult Function() startAutomation,
    required TResult Function() socialMediaSelectorNotifier,
    required TResult Function(bool value) slideButtonAction,
  }) {
    return startAutomation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? socialMediaSelector,
    TResult? Function()? uploadPhoto,
    TResult? Function()? postTextNotifier,
    TResult? Function()? updatePostText,
    TResult? Function()? uploadImageToOrchestrator,
    TResult? Function()? startAutomation,
    TResult? Function()? socialMediaSelectorNotifier,
    TResult? Function(bool value)? slideButtonAction,
  }) {
    return startAutomation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? socialMediaSelector,
    TResult Function()? uploadPhoto,
    TResult Function()? postTextNotifier,
    TResult Function()? updatePostText,
    TResult Function()? uploadImageToOrchestrator,
    TResult Function()? startAutomation,
    TResult Function()? socialMediaSelectorNotifier,
    TResult Function(bool value)? slideButtonAction,
    required TResult orElse(),
  }) {
    if (startAutomation != null) {
      return startAutomation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SocialMediaSelector value) socialMediaSelector,
    required TResult Function(UploadPhoto value) uploadPhoto,
    required TResult Function(PostTextNotifier value) postTextNotifier,
    required TResult Function(UpdatePostText value) updatePostText,
    required TResult Function(UploadImageToOrchestrator value)
        uploadImageToOrchestrator,
    required TResult Function(StartAutomation value) startAutomation,
    required TResult Function(SocialMediaSelectorNotifier value)
        socialMediaSelectorNotifier,
    required TResult Function(SlideButtonAction value) slideButtonAction,
  }) {
    return startAutomation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SocialMediaSelector value)? socialMediaSelector,
    TResult? Function(UploadPhoto value)? uploadPhoto,
    TResult? Function(PostTextNotifier value)? postTextNotifier,
    TResult? Function(UpdatePostText value)? updatePostText,
    TResult? Function(UploadImageToOrchestrator value)?
        uploadImageToOrchestrator,
    TResult? Function(StartAutomation value)? startAutomation,
    TResult? Function(SocialMediaSelectorNotifier value)?
        socialMediaSelectorNotifier,
    TResult? Function(SlideButtonAction value)? slideButtonAction,
  }) {
    return startAutomation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SocialMediaSelector value)? socialMediaSelector,
    TResult Function(UploadPhoto value)? uploadPhoto,
    TResult Function(PostTextNotifier value)? postTextNotifier,
    TResult Function(UpdatePostText value)? updatePostText,
    TResult Function(UploadImageToOrchestrator value)?
        uploadImageToOrchestrator,
    TResult Function(StartAutomation value)? startAutomation,
    TResult Function(SocialMediaSelectorNotifier value)?
        socialMediaSelectorNotifier,
    TResult Function(SlideButtonAction value)? slideButtonAction,
    required TResult orElse(),
  }) {
    if (startAutomation != null) {
      return startAutomation(this);
    }
    return orElse();
  }
}

abstract class StartAutomation implements PostEvent {
  const factory StartAutomation() = _$StartAutomationImpl;
}

/// @nodoc
abstract class _$$SocialMediaSelectorNotifierImplCopyWith<$Res> {
  factory _$$SocialMediaSelectorNotifierImplCopyWith(
          _$SocialMediaSelectorNotifierImpl value,
          $Res Function(_$SocialMediaSelectorNotifierImpl) then) =
      __$$SocialMediaSelectorNotifierImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SocialMediaSelectorNotifierImplCopyWithImpl<$Res>
    extends _$PostEventCopyWithImpl<$Res, _$SocialMediaSelectorNotifierImpl>
    implements _$$SocialMediaSelectorNotifierImplCopyWith<$Res> {
  __$$SocialMediaSelectorNotifierImplCopyWithImpl(
      _$SocialMediaSelectorNotifierImpl _value,
      $Res Function(_$SocialMediaSelectorNotifierImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SocialMediaSelectorNotifierImpl implements SocialMediaSelectorNotifier {
  const _$SocialMediaSelectorNotifierImpl();

  @override
  String toString() {
    return 'PostEvent.socialMediaSelectorNotifier()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocialMediaSelectorNotifierImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) socialMediaSelector,
    required TResult Function() uploadPhoto,
    required TResult Function() postTextNotifier,
    required TResult Function() updatePostText,
    required TResult Function() uploadImageToOrchestrator,
    required TResult Function() startAutomation,
    required TResult Function() socialMediaSelectorNotifier,
    required TResult Function(bool value) slideButtonAction,
  }) {
    return socialMediaSelectorNotifier();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? socialMediaSelector,
    TResult? Function()? uploadPhoto,
    TResult? Function()? postTextNotifier,
    TResult? Function()? updatePostText,
    TResult? Function()? uploadImageToOrchestrator,
    TResult? Function()? startAutomation,
    TResult? Function()? socialMediaSelectorNotifier,
    TResult? Function(bool value)? slideButtonAction,
  }) {
    return socialMediaSelectorNotifier?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? socialMediaSelector,
    TResult Function()? uploadPhoto,
    TResult Function()? postTextNotifier,
    TResult Function()? updatePostText,
    TResult Function()? uploadImageToOrchestrator,
    TResult Function()? startAutomation,
    TResult Function()? socialMediaSelectorNotifier,
    TResult Function(bool value)? slideButtonAction,
    required TResult orElse(),
  }) {
    if (socialMediaSelectorNotifier != null) {
      return socialMediaSelectorNotifier();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SocialMediaSelector value) socialMediaSelector,
    required TResult Function(UploadPhoto value) uploadPhoto,
    required TResult Function(PostTextNotifier value) postTextNotifier,
    required TResult Function(UpdatePostText value) updatePostText,
    required TResult Function(UploadImageToOrchestrator value)
        uploadImageToOrchestrator,
    required TResult Function(StartAutomation value) startAutomation,
    required TResult Function(SocialMediaSelectorNotifier value)
        socialMediaSelectorNotifier,
    required TResult Function(SlideButtonAction value) slideButtonAction,
  }) {
    return socialMediaSelectorNotifier(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SocialMediaSelector value)? socialMediaSelector,
    TResult? Function(UploadPhoto value)? uploadPhoto,
    TResult? Function(PostTextNotifier value)? postTextNotifier,
    TResult? Function(UpdatePostText value)? updatePostText,
    TResult? Function(UploadImageToOrchestrator value)?
        uploadImageToOrchestrator,
    TResult? Function(StartAutomation value)? startAutomation,
    TResult? Function(SocialMediaSelectorNotifier value)?
        socialMediaSelectorNotifier,
    TResult? Function(SlideButtonAction value)? slideButtonAction,
  }) {
    return socialMediaSelectorNotifier?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SocialMediaSelector value)? socialMediaSelector,
    TResult Function(UploadPhoto value)? uploadPhoto,
    TResult Function(PostTextNotifier value)? postTextNotifier,
    TResult Function(UpdatePostText value)? updatePostText,
    TResult Function(UploadImageToOrchestrator value)?
        uploadImageToOrchestrator,
    TResult Function(StartAutomation value)? startAutomation,
    TResult Function(SocialMediaSelectorNotifier value)?
        socialMediaSelectorNotifier,
    TResult Function(SlideButtonAction value)? slideButtonAction,
    required TResult orElse(),
  }) {
    if (socialMediaSelectorNotifier != null) {
      return socialMediaSelectorNotifier(this);
    }
    return orElse();
  }
}

abstract class SocialMediaSelectorNotifier implements PostEvent {
  const factory SocialMediaSelectorNotifier() =
      _$SocialMediaSelectorNotifierImpl;
}

/// @nodoc
abstract class _$$SlideButtonActionImplCopyWith<$Res> {
  factory _$$SlideButtonActionImplCopyWith(_$SlideButtonActionImpl value,
          $Res Function(_$SlideButtonActionImpl) then) =
      __$$SlideButtonActionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool value});
}

/// @nodoc
class __$$SlideButtonActionImplCopyWithImpl<$Res>
    extends _$PostEventCopyWithImpl<$Res, _$SlideButtonActionImpl>
    implements _$$SlideButtonActionImplCopyWith<$Res> {
  __$$SlideButtonActionImplCopyWithImpl(_$SlideButtonActionImpl _value,
      $Res Function(_$SlideButtonActionImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$SlideButtonActionImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SlideButtonActionImpl implements SlideButtonAction {
  const _$SlideButtonActionImpl(this.value);

  @override
  final bool value;

  @override
  String toString() {
    return 'PostEvent.slideButtonAction(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SlideButtonActionImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of PostEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SlideButtonActionImplCopyWith<_$SlideButtonActionImpl> get copyWith =>
      __$$SlideButtonActionImplCopyWithImpl<_$SlideButtonActionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) socialMediaSelector,
    required TResult Function() uploadPhoto,
    required TResult Function() postTextNotifier,
    required TResult Function() updatePostText,
    required TResult Function() uploadImageToOrchestrator,
    required TResult Function() startAutomation,
    required TResult Function() socialMediaSelectorNotifier,
    required TResult Function(bool value) slideButtonAction,
  }) {
    return slideButtonAction(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? socialMediaSelector,
    TResult? Function()? uploadPhoto,
    TResult? Function()? postTextNotifier,
    TResult? Function()? updatePostText,
    TResult? Function()? uploadImageToOrchestrator,
    TResult? Function()? startAutomation,
    TResult? Function()? socialMediaSelectorNotifier,
    TResult? Function(bool value)? slideButtonAction,
  }) {
    return slideButtonAction?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? socialMediaSelector,
    TResult Function()? uploadPhoto,
    TResult Function()? postTextNotifier,
    TResult Function()? updatePostText,
    TResult Function()? uploadImageToOrchestrator,
    TResult Function()? startAutomation,
    TResult Function()? socialMediaSelectorNotifier,
    TResult Function(bool value)? slideButtonAction,
    required TResult orElse(),
  }) {
    if (slideButtonAction != null) {
      return slideButtonAction(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SocialMediaSelector value) socialMediaSelector,
    required TResult Function(UploadPhoto value) uploadPhoto,
    required TResult Function(PostTextNotifier value) postTextNotifier,
    required TResult Function(UpdatePostText value) updatePostText,
    required TResult Function(UploadImageToOrchestrator value)
        uploadImageToOrchestrator,
    required TResult Function(StartAutomation value) startAutomation,
    required TResult Function(SocialMediaSelectorNotifier value)
        socialMediaSelectorNotifier,
    required TResult Function(SlideButtonAction value) slideButtonAction,
  }) {
    return slideButtonAction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SocialMediaSelector value)? socialMediaSelector,
    TResult? Function(UploadPhoto value)? uploadPhoto,
    TResult? Function(PostTextNotifier value)? postTextNotifier,
    TResult? Function(UpdatePostText value)? updatePostText,
    TResult? Function(UploadImageToOrchestrator value)?
        uploadImageToOrchestrator,
    TResult? Function(StartAutomation value)? startAutomation,
    TResult? Function(SocialMediaSelectorNotifier value)?
        socialMediaSelectorNotifier,
    TResult? Function(SlideButtonAction value)? slideButtonAction,
  }) {
    return slideButtonAction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SocialMediaSelector value)? socialMediaSelector,
    TResult Function(UploadPhoto value)? uploadPhoto,
    TResult Function(PostTextNotifier value)? postTextNotifier,
    TResult Function(UpdatePostText value)? updatePostText,
    TResult Function(UploadImageToOrchestrator value)?
        uploadImageToOrchestrator,
    TResult Function(StartAutomation value)? startAutomation,
    TResult Function(SocialMediaSelectorNotifier value)?
        socialMediaSelectorNotifier,
    TResult Function(SlideButtonAction value)? slideButtonAction,
    required TResult orElse(),
  }) {
    if (slideButtonAction != null) {
      return slideButtonAction(this);
    }
    return orElse();
  }
}

abstract class SlideButtonAction implements PostEvent {
  const factory SlideButtonAction(final bool value) = _$SlideButtonActionImpl;

  bool get value;

  /// Create a copy of PostEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SlideButtonActionImplCopyWith<_$SlideButtonActionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PostState {
  Set<int> get selectedIndex => throw _privateConstructorUsedError;
  XFile? get image => throw _privateConstructorUsedError;
  bool? get isInstagramSelected => throw _privateConstructorUsedError;
  bool? get isFacebookSelected => throw _privateConstructorUsedError;
  bool? get isTwitterSelected => throw _privateConstructorUsedError;
  bool? get isLinkedinSelected => throw _privateConstructorUsedError;
  bool get isPostTextEmpty => throw _privateConstructorUsedError;
  TextEditingController get postTextController =>
      throw _privateConstructorUsedError;
  bool get isImageEmpty => throw _privateConstructorUsedError;
  bool get isSocialMediaSelected => throw _privateConstructorUsedError;
  bool get isEnabledToPost => throw _privateConstructorUsedError;

  /// Create a copy of PostState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostStateCopyWith<PostState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostStateCopyWith<$Res> {
  factory $PostStateCopyWith(PostState value, $Res Function(PostState) then) =
      _$PostStateCopyWithImpl<$Res, PostState>;
  @useResult
  $Res call(
      {Set<int> selectedIndex,
      XFile? image,
      bool? isInstagramSelected,
      bool? isFacebookSelected,
      bool? isTwitterSelected,
      bool? isLinkedinSelected,
      bool isPostTextEmpty,
      TextEditingController postTextController,
      bool isImageEmpty,
      bool isSocialMediaSelected,
      bool isEnabledToPost});
}

/// @nodoc
class _$PostStateCopyWithImpl<$Res, $Val extends PostState>
    implements $PostStateCopyWith<$Res> {
  _$PostStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedIndex = null,
    Object? image = freezed,
    Object? isInstagramSelected = freezed,
    Object? isFacebookSelected = freezed,
    Object? isTwitterSelected = freezed,
    Object? isLinkedinSelected = freezed,
    Object? isPostTextEmpty = null,
    Object? postTextController = null,
    Object? isImageEmpty = null,
    Object? isSocialMediaSelected = null,
    Object? isEnabledToPost = null,
  }) {
    return _then(_value.copyWith(
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as Set<int>,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as XFile?,
      isInstagramSelected: freezed == isInstagramSelected
          ? _value.isInstagramSelected
          : isInstagramSelected // ignore: cast_nullable_to_non_nullable
              as bool?,
      isFacebookSelected: freezed == isFacebookSelected
          ? _value.isFacebookSelected
          : isFacebookSelected // ignore: cast_nullable_to_non_nullable
              as bool?,
      isTwitterSelected: freezed == isTwitterSelected
          ? _value.isTwitterSelected
          : isTwitterSelected // ignore: cast_nullable_to_non_nullable
              as bool?,
      isLinkedinSelected: freezed == isLinkedinSelected
          ? _value.isLinkedinSelected
          : isLinkedinSelected // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPostTextEmpty: null == isPostTextEmpty
          ? _value.isPostTextEmpty
          : isPostTextEmpty // ignore: cast_nullable_to_non_nullable
              as bool,
      postTextController: null == postTextController
          ? _value.postTextController
          : postTextController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      isImageEmpty: null == isImageEmpty
          ? _value.isImageEmpty
          : isImageEmpty // ignore: cast_nullable_to_non_nullable
              as bool,
      isSocialMediaSelected: null == isSocialMediaSelected
          ? _value.isSocialMediaSelected
          : isSocialMediaSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      isEnabledToPost: null == isEnabledToPost
          ? _value.isEnabledToPost
          : isEnabledToPost // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostStateImplCopyWith<$Res>
    implements $PostStateCopyWith<$Res> {
  factory _$$PostStateImplCopyWith(
          _$PostStateImpl value, $Res Function(_$PostStateImpl) then) =
      __$$PostStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Set<int> selectedIndex,
      XFile? image,
      bool? isInstagramSelected,
      bool? isFacebookSelected,
      bool? isTwitterSelected,
      bool? isLinkedinSelected,
      bool isPostTextEmpty,
      TextEditingController postTextController,
      bool isImageEmpty,
      bool isSocialMediaSelected,
      bool isEnabledToPost});
}

/// @nodoc
class __$$PostStateImplCopyWithImpl<$Res>
    extends _$PostStateCopyWithImpl<$Res, _$PostStateImpl>
    implements _$$PostStateImplCopyWith<$Res> {
  __$$PostStateImplCopyWithImpl(
      _$PostStateImpl _value, $Res Function(_$PostStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedIndex = null,
    Object? image = freezed,
    Object? isInstagramSelected = freezed,
    Object? isFacebookSelected = freezed,
    Object? isTwitterSelected = freezed,
    Object? isLinkedinSelected = freezed,
    Object? isPostTextEmpty = null,
    Object? postTextController = null,
    Object? isImageEmpty = null,
    Object? isSocialMediaSelected = null,
    Object? isEnabledToPost = null,
  }) {
    return _then(_$PostStateImpl(
      selectedIndex: null == selectedIndex
          ? _value._selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as Set<int>,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as XFile?,
      isInstagramSelected: freezed == isInstagramSelected
          ? _value.isInstagramSelected
          : isInstagramSelected // ignore: cast_nullable_to_non_nullable
              as bool?,
      isFacebookSelected: freezed == isFacebookSelected
          ? _value.isFacebookSelected
          : isFacebookSelected // ignore: cast_nullable_to_non_nullable
              as bool?,
      isTwitterSelected: freezed == isTwitterSelected
          ? _value.isTwitterSelected
          : isTwitterSelected // ignore: cast_nullable_to_non_nullable
              as bool?,
      isLinkedinSelected: freezed == isLinkedinSelected
          ? _value.isLinkedinSelected
          : isLinkedinSelected // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPostTextEmpty: null == isPostTextEmpty
          ? _value.isPostTextEmpty
          : isPostTextEmpty // ignore: cast_nullable_to_non_nullable
              as bool,
      postTextController: null == postTextController
          ? _value.postTextController
          : postTextController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      isImageEmpty: null == isImageEmpty
          ? _value.isImageEmpty
          : isImageEmpty // ignore: cast_nullable_to_non_nullable
              as bool,
      isSocialMediaSelected: null == isSocialMediaSelected
          ? _value.isSocialMediaSelected
          : isSocialMediaSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      isEnabledToPost: null == isEnabledToPost
          ? _value.isEnabledToPost
          : isEnabledToPost // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PostStateImpl implements _PostState {
  const _$PostStateImpl(
      {required final Set<int> selectedIndex,
      this.image,
      this.isInstagramSelected,
      this.isFacebookSelected,
      this.isTwitterSelected,
      this.isLinkedinSelected,
      required this.isPostTextEmpty,
      required this.postTextController,
      required this.isImageEmpty,
      required this.isSocialMediaSelected,
      required this.isEnabledToPost})
      : _selectedIndex = selectedIndex;

  final Set<int> _selectedIndex;
  @override
  Set<int> get selectedIndex {
    if (_selectedIndex is EqualUnmodifiableSetView) return _selectedIndex;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_selectedIndex);
  }

  @override
  final XFile? image;
  @override
  final bool? isInstagramSelected;
  @override
  final bool? isFacebookSelected;
  @override
  final bool? isTwitterSelected;
  @override
  final bool? isLinkedinSelected;
  @override
  final bool isPostTextEmpty;
  @override
  final TextEditingController postTextController;
  @override
  final bool isImageEmpty;
  @override
  final bool isSocialMediaSelected;
  @override
  final bool isEnabledToPost;

  @override
  String toString() {
    return 'PostState(selectedIndex: $selectedIndex, image: $image, isInstagramSelected: $isInstagramSelected, isFacebookSelected: $isFacebookSelected, isTwitterSelected: $isTwitterSelected, isLinkedinSelected: $isLinkedinSelected, isPostTextEmpty: $isPostTextEmpty, postTextController: $postTextController, isImageEmpty: $isImageEmpty, isSocialMediaSelected: $isSocialMediaSelected, isEnabledToPost: $isEnabledToPost)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostStateImpl &&
            const DeepCollectionEquality()
                .equals(other._selectedIndex, _selectedIndex) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.isInstagramSelected, isInstagramSelected) ||
                other.isInstagramSelected == isInstagramSelected) &&
            (identical(other.isFacebookSelected, isFacebookSelected) ||
                other.isFacebookSelected == isFacebookSelected) &&
            (identical(other.isTwitterSelected, isTwitterSelected) ||
                other.isTwitterSelected == isTwitterSelected) &&
            (identical(other.isLinkedinSelected, isLinkedinSelected) ||
                other.isLinkedinSelected == isLinkedinSelected) &&
            (identical(other.isPostTextEmpty, isPostTextEmpty) ||
                other.isPostTextEmpty == isPostTextEmpty) &&
            (identical(other.postTextController, postTextController) ||
                other.postTextController == postTextController) &&
            (identical(other.isImageEmpty, isImageEmpty) ||
                other.isImageEmpty == isImageEmpty) &&
            (identical(other.isSocialMediaSelected, isSocialMediaSelected) ||
                other.isSocialMediaSelected == isSocialMediaSelected) &&
            (identical(other.isEnabledToPost, isEnabledToPost) ||
                other.isEnabledToPost == isEnabledToPost));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_selectedIndex),
      image,
      isInstagramSelected,
      isFacebookSelected,
      isTwitterSelected,
      isLinkedinSelected,
      isPostTextEmpty,
      postTextController,
      isImageEmpty,
      isSocialMediaSelected,
      isEnabledToPost);

  /// Create a copy of PostState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostStateImplCopyWith<_$PostStateImpl> get copyWith =>
      __$$PostStateImplCopyWithImpl<_$PostStateImpl>(this, _$identity);
}

abstract class _PostState implements PostState {
  const factory _PostState(
      {required final Set<int> selectedIndex,
      final XFile? image,
      final bool? isInstagramSelected,
      final bool? isFacebookSelected,
      final bool? isTwitterSelected,
      final bool? isLinkedinSelected,
      required final bool isPostTextEmpty,
      required final TextEditingController postTextController,
      required final bool isImageEmpty,
      required final bool isSocialMediaSelected,
      required final bool isEnabledToPost}) = _$PostStateImpl;

  @override
  Set<int> get selectedIndex;
  @override
  XFile? get image;
  @override
  bool? get isInstagramSelected;
  @override
  bool? get isFacebookSelected;
  @override
  bool? get isTwitterSelected;
  @override
  bool? get isLinkedinSelected;
  @override
  bool get isPostTextEmpty;
  @override
  TextEditingController get postTextController;
  @override
  bool get isImageEmpty;
  @override
  bool get isSocialMediaSelected;
  @override
  bool get isEnabledToPost;

  /// Create a copy of PostState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostStateImplCopyWith<_$PostStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
