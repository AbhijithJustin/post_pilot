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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? socialMediaSelector,
    TResult? Function()? uploadPhoto,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? socialMediaSelector,
    TResult Function()? uploadPhoto,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SocialMediaSelector value) socialMediaSelector,
    required TResult Function(UploadPhoto value) uploadPhoto,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SocialMediaSelector value)? socialMediaSelector,
    TResult? Function(UploadPhoto value)? uploadPhoto,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SocialMediaSelector value)? socialMediaSelector,
    TResult Function(UploadPhoto value)? uploadPhoto,
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
  }) {
    return socialMediaSelector(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? socialMediaSelector,
    TResult? Function()? uploadPhoto,
  }) {
    return socialMediaSelector?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? socialMediaSelector,
    TResult Function()? uploadPhoto,
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
  }) {
    return socialMediaSelector(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SocialMediaSelector value)? socialMediaSelector,
    TResult? Function(UploadPhoto value)? uploadPhoto,
  }) {
    return socialMediaSelector?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SocialMediaSelector value)? socialMediaSelector,
    TResult Function(UploadPhoto value)? uploadPhoto,
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
  }) {
    return uploadPhoto();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? socialMediaSelector,
    TResult? Function()? uploadPhoto,
  }) {
    return uploadPhoto?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? socialMediaSelector,
    TResult Function()? uploadPhoto,
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
  }) {
    return uploadPhoto(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SocialMediaSelector value)? socialMediaSelector,
    TResult? Function(UploadPhoto value)? uploadPhoto,
  }) {
    return uploadPhoto?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SocialMediaSelector value)? socialMediaSelector,
    TResult Function(UploadPhoto value)? uploadPhoto,
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
mixin _$PostState {
  Set<int> get selectedIndex => throw _privateConstructorUsedError;
  XFile? get image => throw _privateConstructorUsedError;
  bool? get isInstagramSelected => throw _privateConstructorUsedError;
  bool? get isFacebookSelected => throw _privateConstructorUsedError;
  bool? get isTwitterSelected => throw _privateConstructorUsedError;
  bool? get isLinkedinSelected => throw _privateConstructorUsedError;

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
      bool? isLinkedinSelected});
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
      bool? isLinkedinSelected});
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
      this.isLinkedinSelected})
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
  String toString() {
    return 'PostState(selectedIndex: $selectedIndex, image: $image, isInstagramSelected: $isInstagramSelected, isFacebookSelected: $isFacebookSelected, isTwitterSelected: $isTwitterSelected, isLinkedinSelected: $isLinkedinSelected)';
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
                other.isLinkedinSelected == isLinkedinSelected));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_selectedIndex),
      image,
      isInstagramSelected,
      isFacebookSelected,
      isTwitterSelected,
      isLinkedinSelected);

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
      final bool? isLinkedinSelected}) = _$PostStateImpl;

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

  /// Create a copy of PostState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostStateImplCopyWith<_$PostStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
