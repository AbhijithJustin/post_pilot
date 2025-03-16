// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jobs_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$JobsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getJobs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getJobs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getJobs,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetJobs value) getJobs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetJobs value)? getJobs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetJobs value)? getJobs,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobsEventCopyWith<$Res> {
  factory $JobsEventCopyWith(JobsEvent value, $Res Function(JobsEvent) then) =
      _$JobsEventCopyWithImpl<$Res, JobsEvent>;
}

/// @nodoc
class _$JobsEventCopyWithImpl<$Res, $Val extends JobsEvent>
    implements $JobsEventCopyWith<$Res> {
  _$JobsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JobsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetJobsImplCopyWith<$Res> {
  factory _$$GetJobsImplCopyWith(
          _$GetJobsImpl value, $Res Function(_$GetJobsImpl) then) =
      __$$GetJobsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetJobsImplCopyWithImpl<$Res>
    extends _$JobsEventCopyWithImpl<$Res, _$GetJobsImpl>
    implements _$$GetJobsImplCopyWith<$Res> {
  __$$GetJobsImplCopyWithImpl(
      _$GetJobsImpl _value, $Res Function(_$GetJobsImpl) _then)
      : super(_value, _then);

  /// Create a copy of JobsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetJobsImpl implements GetJobs {
  const _$GetJobsImpl();

  @override
  String toString() {
    return 'JobsEvent.getJobs()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetJobsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getJobs,
  }) {
    return getJobs();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getJobs,
  }) {
    return getJobs?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getJobs,
    required TResult orElse(),
  }) {
    if (getJobs != null) {
      return getJobs();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetJobs value) getJobs,
  }) {
    return getJobs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetJobs value)? getJobs,
  }) {
    return getJobs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetJobs value)? getJobs,
    required TResult orElse(),
  }) {
    if (getJobs != null) {
      return getJobs(this);
    }
    return orElse();
  }
}

abstract class GetJobs implements JobsEvent {
  const factory GetJobs() = _$GetJobsImpl;
}

/// @nodoc
mixin _$JobsState {
  List<JobsEntity> get jobsData => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of JobsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JobsStateCopyWith<JobsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobsStateCopyWith<$Res> {
  factory $JobsStateCopyWith(JobsState value, $Res Function(JobsState) then) =
      _$JobsStateCopyWithImpl<$Res, JobsState>;
  @useResult
  $Res call({List<JobsEntity> jobsData, String? error});
}

/// @nodoc
class _$JobsStateCopyWithImpl<$Res, $Val extends JobsState>
    implements $JobsStateCopyWith<$Res> {
  _$JobsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JobsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jobsData = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      jobsData: null == jobsData
          ? _value.jobsData
          : jobsData // ignore: cast_nullable_to_non_nullable
              as List<JobsEntity>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JobsStateImplCopyWith<$Res>
    implements $JobsStateCopyWith<$Res> {
  factory _$$JobsStateImplCopyWith(
          _$JobsStateImpl value, $Res Function(_$JobsStateImpl) then) =
      __$$JobsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<JobsEntity> jobsData, String? error});
}

/// @nodoc
class __$$JobsStateImplCopyWithImpl<$Res>
    extends _$JobsStateCopyWithImpl<$Res, _$JobsStateImpl>
    implements _$$JobsStateImplCopyWith<$Res> {
  __$$JobsStateImplCopyWithImpl(
      _$JobsStateImpl _value, $Res Function(_$JobsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of JobsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jobsData = null,
    Object? error = freezed,
  }) {
    return _then(_$JobsStateImpl(
      jobsData: null == jobsData
          ? _value._jobsData
          : jobsData // ignore: cast_nullable_to_non_nullable
              as List<JobsEntity>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$JobsStateImpl implements _JobsState {
  _$JobsStateImpl({required final List<JobsEntity> jobsData, this.error})
      : _jobsData = jobsData;

  final List<JobsEntity> _jobsData;
  @override
  List<JobsEntity> get jobsData {
    if (_jobsData is EqualUnmodifiableListView) return _jobsData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_jobsData);
  }

  @override
  final String? error;

  @override
  String toString() {
    return 'JobsState(jobsData: $jobsData, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobsStateImpl &&
            const DeepCollectionEquality().equals(other._jobsData, _jobsData) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_jobsData), error);

  /// Create a copy of JobsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JobsStateImplCopyWith<_$JobsStateImpl> get copyWith =>
      __$$JobsStateImplCopyWithImpl<_$JobsStateImpl>(this, _$identity);
}

abstract class _JobsState implements JobsState {
  factory _JobsState(
      {required final List<JobsEntity> jobsData,
      final String? error}) = _$JobsStateImpl;

  @override
  List<JobsEntity> get jobsData;
  @override
  String? get error;

  /// Create a copy of JobsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JobsStateImplCopyWith<_$JobsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
