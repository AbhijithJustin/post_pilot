// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showLoginPassword,
    required TResult Function() showRegisterPassword,
    required TResult Function() showConformPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? showLoginPassword,
    TResult? Function()? showRegisterPassword,
    TResult? Function()? showConformPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showLoginPassword,
    TResult Function()? showRegisterPassword,
    TResult Function()? showConformPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowLoginPassword value) showLoginPassword,
    required TResult Function(ShowRegisterPassword value) showRegisterPassword,
    required TResult Function(ShowConformPassword value) showConformPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowLoginPassword value)? showLoginPassword,
    TResult? Function(ShowRegisterPassword value)? showRegisterPassword,
    TResult? Function(ShowConformPassword value)? showConformPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowLoginPassword value)? showLoginPassword,
    TResult Function(ShowRegisterPassword value)? showRegisterPassword,
    TResult Function(ShowConformPassword value)? showConformPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ShowLoginPasswordImplCopyWith<$Res> {
  factory _$$ShowLoginPasswordImplCopyWith(_$ShowLoginPasswordImpl value,
          $Res Function(_$ShowLoginPasswordImpl) then) =
      __$$ShowLoginPasswordImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShowLoginPasswordImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ShowLoginPasswordImpl>
    implements _$$ShowLoginPasswordImplCopyWith<$Res> {
  __$$ShowLoginPasswordImplCopyWithImpl(_$ShowLoginPasswordImpl _value,
      $Res Function(_$ShowLoginPasswordImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ShowLoginPasswordImpl
    with DiagnosticableTreeMixin
    implements ShowLoginPassword {
  const _$ShowLoginPasswordImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.showLoginPassword()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AuthEvent.showLoginPassword'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShowLoginPasswordImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showLoginPassword,
    required TResult Function() showRegisterPassword,
    required TResult Function() showConformPassword,
  }) {
    return showLoginPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? showLoginPassword,
    TResult? Function()? showRegisterPassword,
    TResult? Function()? showConformPassword,
  }) {
    return showLoginPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showLoginPassword,
    TResult Function()? showRegisterPassword,
    TResult Function()? showConformPassword,
    required TResult orElse(),
  }) {
    if (showLoginPassword != null) {
      return showLoginPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowLoginPassword value) showLoginPassword,
    required TResult Function(ShowRegisterPassword value) showRegisterPassword,
    required TResult Function(ShowConformPassword value) showConformPassword,
  }) {
    return showLoginPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowLoginPassword value)? showLoginPassword,
    TResult? Function(ShowRegisterPassword value)? showRegisterPassword,
    TResult? Function(ShowConformPassword value)? showConformPassword,
  }) {
    return showLoginPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowLoginPassword value)? showLoginPassword,
    TResult Function(ShowRegisterPassword value)? showRegisterPassword,
    TResult Function(ShowConformPassword value)? showConformPassword,
    required TResult orElse(),
  }) {
    if (showLoginPassword != null) {
      return showLoginPassword(this);
    }
    return orElse();
  }
}

abstract class ShowLoginPassword implements AuthEvent {
  const factory ShowLoginPassword() = _$ShowLoginPasswordImpl;
}

/// @nodoc
abstract class _$$ShowRegisterPasswordImplCopyWith<$Res> {
  factory _$$ShowRegisterPasswordImplCopyWith(_$ShowRegisterPasswordImpl value,
          $Res Function(_$ShowRegisterPasswordImpl) then) =
      __$$ShowRegisterPasswordImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShowRegisterPasswordImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ShowRegisterPasswordImpl>
    implements _$$ShowRegisterPasswordImplCopyWith<$Res> {
  __$$ShowRegisterPasswordImplCopyWithImpl(_$ShowRegisterPasswordImpl _value,
      $Res Function(_$ShowRegisterPasswordImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ShowRegisterPasswordImpl
    with DiagnosticableTreeMixin
    implements ShowRegisterPassword {
  const _$ShowRegisterPasswordImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.showRegisterPassword()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthEvent.showRegisterPassword'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowRegisterPasswordImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showLoginPassword,
    required TResult Function() showRegisterPassword,
    required TResult Function() showConformPassword,
  }) {
    return showRegisterPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? showLoginPassword,
    TResult? Function()? showRegisterPassword,
    TResult? Function()? showConformPassword,
  }) {
    return showRegisterPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showLoginPassword,
    TResult Function()? showRegisterPassword,
    TResult Function()? showConformPassword,
    required TResult orElse(),
  }) {
    if (showRegisterPassword != null) {
      return showRegisterPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowLoginPassword value) showLoginPassword,
    required TResult Function(ShowRegisterPassword value) showRegisterPassword,
    required TResult Function(ShowConformPassword value) showConformPassword,
  }) {
    return showRegisterPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowLoginPassword value)? showLoginPassword,
    TResult? Function(ShowRegisterPassword value)? showRegisterPassword,
    TResult? Function(ShowConformPassword value)? showConformPassword,
  }) {
    return showRegisterPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowLoginPassword value)? showLoginPassword,
    TResult Function(ShowRegisterPassword value)? showRegisterPassword,
    TResult Function(ShowConformPassword value)? showConformPassword,
    required TResult orElse(),
  }) {
    if (showRegisterPassword != null) {
      return showRegisterPassword(this);
    }
    return orElse();
  }
}

abstract class ShowRegisterPassword implements AuthEvent {
  const factory ShowRegisterPassword() = _$ShowRegisterPasswordImpl;
}

/// @nodoc
abstract class _$$ShowConformPasswordImplCopyWith<$Res> {
  factory _$$ShowConformPasswordImplCopyWith(_$ShowConformPasswordImpl value,
          $Res Function(_$ShowConformPasswordImpl) then) =
      __$$ShowConformPasswordImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShowConformPasswordImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ShowConformPasswordImpl>
    implements _$$ShowConformPasswordImplCopyWith<$Res> {
  __$$ShowConformPasswordImplCopyWithImpl(_$ShowConformPasswordImpl _value,
      $Res Function(_$ShowConformPasswordImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ShowConformPasswordImpl
    with DiagnosticableTreeMixin
    implements ShowConformPassword {
  const _$ShowConformPasswordImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.showConformPassword()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthEvent.showConformPassword'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowConformPasswordImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showLoginPassword,
    required TResult Function() showRegisterPassword,
    required TResult Function() showConformPassword,
  }) {
    return showConformPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? showLoginPassword,
    TResult? Function()? showRegisterPassword,
    TResult? Function()? showConformPassword,
  }) {
    return showConformPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showLoginPassword,
    TResult Function()? showRegisterPassword,
    TResult Function()? showConformPassword,
    required TResult orElse(),
  }) {
    if (showConformPassword != null) {
      return showConformPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowLoginPassword value) showLoginPassword,
    required TResult Function(ShowRegisterPassword value) showRegisterPassword,
    required TResult Function(ShowConformPassword value) showConformPassword,
  }) {
    return showConformPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowLoginPassword value)? showLoginPassword,
    TResult? Function(ShowRegisterPassword value)? showRegisterPassword,
    TResult? Function(ShowConformPassword value)? showConformPassword,
  }) {
    return showConformPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowLoginPassword value)? showLoginPassword,
    TResult Function(ShowRegisterPassword value)? showRegisterPassword,
    TResult Function(ShowConformPassword value)? showConformPassword,
    required TResult orElse(),
  }) {
    if (showConformPassword != null) {
      return showConformPassword(this);
    }
    return orElse();
  }
}

abstract class ShowConformPassword implements AuthEvent {
  const factory ShowConformPassword() = _$ShowConformPasswordImpl;
}

/// @nodoc
mixin _$AuthState {
  dynamic get showPassword => throw _privateConstructorUsedError;
  dynamic get showRegisterPassword => throw _privateConstructorUsedError;
  dynamic get showConformPassword => throw _privateConstructorUsedError;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {dynamic showPassword,
      dynamic showRegisterPassword,
      dynamic showConformPassword});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showPassword = freezed,
    Object? showRegisterPassword = freezed,
    Object? showConformPassword = freezed,
  }) {
    return _then(_value.copyWith(
      showPassword: freezed == showPassword
          ? _value.showPassword
          : showPassword // ignore: cast_nullable_to_non_nullable
              as dynamic,
      showRegisterPassword: freezed == showRegisterPassword
          ? _value.showRegisterPassword
          : showRegisterPassword // ignore: cast_nullable_to_non_nullable
              as dynamic,
      showConformPassword: freezed == showConformPassword
          ? _value.showConformPassword
          : showConformPassword // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateImplCopyWith(
          _$AuthStateImpl value, $Res Function(_$AuthStateImpl) then) =
      __$$AuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic showPassword,
      dynamic showRegisterPassword,
      dynamic showConformPassword});
}

/// @nodoc
class __$$AuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateImpl>
    implements _$$AuthStateImplCopyWith<$Res> {
  __$$AuthStateImplCopyWithImpl(
      _$AuthStateImpl _value, $Res Function(_$AuthStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showPassword = freezed,
    Object? showRegisterPassword = freezed,
    Object? showConformPassword = freezed,
  }) {
    return _then(_$AuthStateImpl(
      showPassword:
          freezed == showPassword ? _value.showPassword! : showPassword,
      showRegisterPassword: freezed == showRegisterPassword
          ? _value.showRegisterPassword!
          : showRegisterPassword,
      showConformPassword: freezed == showConformPassword
          ? _value.showConformPassword!
          : showConformPassword,
    ));
  }
}

/// @nodoc

class _$AuthStateImpl with DiagnosticableTreeMixin implements _AuthState {
  _$AuthStateImpl(
      {this.showPassword, this.showRegisterPassword, this.showConformPassword});

  @override
  final dynamic showPassword;
  @override
  final dynamic showRegisterPassword;
  @override
  final dynamic showConformPassword;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState(showPassword: $showPassword, showRegisterPassword: $showRegisterPassword, showConformPassword: $showConformPassword)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthState'))
      ..add(DiagnosticsProperty('showPassword', showPassword))
      ..add(DiagnosticsProperty('showRegisterPassword', showRegisterPassword))
      ..add(DiagnosticsProperty('showConformPassword', showConformPassword));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateImpl &&
            const DeepCollectionEquality()
                .equals(other.showPassword, showPassword) &&
            const DeepCollectionEquality()
                .equals(other.showRegisterPassword, showRegisterPassword) &&
            const DeepCollectionEquality()
                .equals(other.showConformPassword, showConformPassword));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(showPassword),
      const DeepCollectionEquality().hash(showRegisterPassword),
      const DeepCollectionEquality().hash(showConformPassword));

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      __$$AuthStateImplCopyWithImpl<_$AuthStateImpl>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  factory _AuthState(
      {final dynamic showPassword,
      final dynamic showRegisterPassword,
      final dynamic showConformPassword}) = _$AuthStateImpl;

  @override
  dynamic get showPassword;
  @override
  dynamic get showRegisterPassword;
  @override
  dynamic get showConformPassword;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
