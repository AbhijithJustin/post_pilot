part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required int selectedIndex,
    required List<JobsEntity> instagramJobsData,
    required List<JobsEntity> twitterJobsData,
    required List<JobsEntity> facebookJobsData,
    required List<JobsEntity> linkedinJobsData,
    required List<JobsEntity> jobsData,
    required int successful,
    required int fluted,
    required int stopped,
    required int instagramSuccessful,
    required int instagramFluted,
    required int fbSuccessful,
    required int fbFluted,
    required int twitterSuccessful,
    required int twitterFluted,
    required int linkedinSuccessful,
    required int linkedinFluted,
    String? error,
  }) = _HomeState;

  factory HomeState.initial() => HomeState(
        selectedIndex: 0,
        instagramJobsData: [],
        twitterJobsData: [],
        facebookJobsData: [],
        linkedinJobsData: [],
        jobsData: [],
        error: null,
        successful: 0,
        fluted: 0,
        stopped: 0,
        instagramSuccessful: 0,
        instagramFluted: 0,
        fbSuccessful: 0,
        fbFluted: 0,
        twitterSuccessful: 0,
        twitterFluted: 0,
        linkedinSuccessful: 0,
        linkedinFluted: 0,
      );
}
