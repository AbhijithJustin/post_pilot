import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:post_pilot/service_locator.dart';
import 'package:post_pilot/src/features/jobs/domain/entities/jobs.dart';
import 'package:post_pilot/src/features/jobs/domain/usecases/jobs.dart';

part 'jobs_event.dart';
part 'jobs_state.dart';
part 'jobs_bloc.freezed.dart';

class JobsBloc extends Bloc<JobsEvent, JobsState> {
  JobsBloc() : super(JobsState.initial()) {
    on<GetJobs>((event, emit) async {
      final returnData = await sl<JobsUseCases>().call(null);

      returnData.fold((error) {
        return emit(state.copyWith(error: error));
      }, (jobs) {
        final pendingJobsCount =
            jobs.where((job) => job.state == 'Pending').length;

        return emit(state.copyWith(
            jobsData: jobs as List<JobsEntity>,
            pendingJobsCount: pendingJobsCount));
      });
    });
  }

  Stream<List<JobsEntity>> get jobsStream async* {
    while (true) {
      await Future.delayed(
          Duration(seconds: 2)); // Adjust the interval as needed
      add(GetJobs());
      yield state.jobsData;
    }
  }
}
