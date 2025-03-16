import 'package:dartz/dartz.dart';
import 'package:post_pilot/src/core/usecase/usecase.dart';
import 'package:post_pilot/service_locator.dart';
import 'package:post_pilot/src/features/jobs/domain/repository/jobs.dart';

class JobsUseCases extends UseCase<Either, void> {
  @override
  Future<Either> call(void params) async {
    return await sl<JobsRepository>().getJobs();
  }
}
