import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:post_pilot/service_locator.dart';
import 'package:post_pilot/src/features/jobs/domain/entities/jobs.dart';
import 'package:post_pilot/src/features/jobs/domain/usecases/jobs.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState.initial()) {
    on<BottomNavigationTapped>((event, emit) {
      emit(state.copyWith(selectedIndex: event.index));
    });

    on<GetDataForChart>((event, emit) async {
      final returnData = await sl<JobsUseCases>().call(null);

      returnData.fold((error) {
        return emit(state.copyWith(error: error));
      }, (jobs) {
        final instagramJobs =
            jobs.where((job) => job.releaseName == 'Instagram').toList();
        final facebookJobs =
            jobs.where((job) => job.releaseName == 'Facebook').toList();
        final twitterJobs =
            jobs.where((job) => job.releaseName == 'Twitter').toList();
        final linkedInJobs =
            jobs.where((job) => job.releaseName == 'LinkedIn').toList();

        final successfulJobsCount =
            jobs.where((job) => job.state == 'Successful').length;
        final failedJobsCount =
            jobs.where((job) => job.state != 'Successful').length;
        final stoppedJobsCount =
            jobs.where((job) => job.state == 'Stopped').length;

        final successfulInstagramJobsCount =
            instagramJobs.where((job) => job.state == 'Successful').length;
        final failedInstagramJobsCount =
            instagramJobs.where((job) => job.state != 'Successful').length;

        final successfulFacebookJobsCount =
            facebookJobs.where((job) => job.state == 'Successful').length;
        final failedFacebookJobsCount =
            facebookJobs.where((job) => job.state != 'Successful').length;
        final successfulTwitterJobsCount =
            twitterJobs.where((job) => job.state == 'Successful').length;
        final failedTwitterJobsCount =
            twitterJobs.where((job) => job.state != 'Successful').length;
        final successfulLinkedInJobsCount =
            linkedInJobs.where((job) => job.state == 'Successful').length;
        final failedLinkedInJobsCount =
            linkedInJobs.where((job) => job.state != 'Successful').length;

        return emit(state.copyWith(
            jobsData: jobs as List<JobsEntity>,
            instagramJobsData: instagramJobs,
            twitterJobsData: twitterJobs,
            facebookJobsData: facebookJobs,
            linkedinJobsData: linkedInJobs,
            successful: successfulJobsCount,
            fluted: failedJobsCount,
            stopped: stoppedJobsCount,
            instagramSuccessful: successfulInstagramJobsCount,
            instagramFluted: failedInstagramJobsCount,
            fbSuccessful: successfulFacebookJobsCount,
            fbFluted: failedFacebookJobsCount,
            twitterSuccessful: successfulTwitterJobsCount,
            twitterFluted: failedTwitterJobsCount,
            linkedinSuccessful: successfulLinkedInJobsCount,
            linkedinFluted: failedLinkedInJobsCount));
      });
    });

    on<SocialMediaTapped>((event, emit) {
      switch (event.index) {
        case 0:
          Navigator.pushNamed(event.context, '/instagram');
          break;
        case 1:
          Navigator.pushNamed(event.context, '/facebook');
          break;
        case 2:
          Navigator.pushNamed(event.context, '/twitter');
          break;
        case 3:
          Navigator.pushNamed(event.context, '/linkedIn');
          break;
        default:
          return null;
      }
    });
  }
}
