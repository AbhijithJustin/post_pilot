import 'package:dartz/dartz.dart';
import 'package:post_pilot/src/core/helpers/mapper/jobs_mapper.dart';
import 'package:post_pilot/service_locator.dart';
import 'package:post_pilot/src/features/jobs/data/models/jobs.dart';
import 'package:post_pilot/src/features/jobs/data/source/jobs_api_service.dart';
import 'package:post_pilot/src/features/jobs/domain/repository/jobs.dart';

class JobsRepositoryImpl extends JobsRepository {
  @override
  Future<Either> getJobs() async {
    var returnedData = await sl<JobsApiService>().getJobs();

    return returnedData.fold(
      (error) {
        return Left(error);
      },
      (data) {
        var jobs = List.from(data)
            .map((item) => JobsMapper.toEntity(JobsModel.fromJson(item)))
            .toList();

        return Right(jobs);
      },
    );
  }
}
