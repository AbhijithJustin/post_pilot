import 'dart:developer';

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
        log(jobs[0].key.toString());
        return emit(state.copyWith(jobsData: jobs as List<JobsEntity>));
      });
    });
  }
}
