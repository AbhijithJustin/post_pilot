import 'package:dartz/dartz.dart';

abstract class JobsRepository {
  Future<Either> getJobs();
}
