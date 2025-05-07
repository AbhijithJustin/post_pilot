part of 'jobs_bloc.dart';

@freezed
class JobsState with _$JobsState {
  factory JobsState(
      {required List<JobsEntity> jobsData,
      required int pendingJobsCount,
      String? error}) = _JobsState;
  factory JobsState.initial() =>
      JobsState(jobsData: [], error: null, pendingJobsCount: 0);
}
