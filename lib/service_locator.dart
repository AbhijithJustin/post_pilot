import 'package:get_it/get_it.dart';
import 'package:post_pilot/src/core/network/dio_client.dart';
import 'package:post_pilot/src/features/auth/data/repository/auth.dart';
import 'package:post_pilot/src/features/auth/data/source/auth_api_service.dart';
import 'package:post_pilot/src/features/auth/domain/repository/auth.dart';
import 'package:post_pilot/src/features/auth/domain/usecases/token.dart';
import 'package:post_pilot/src/features/jobs/data/repository/jobs.dart';
import 'package:post_pilot/src/features/jobs/data/source/jobs_api_service.dart';
import 'package:post_pilot/src/features/jobs/domain/repository/jobs.dart';
import 'package:post_pilot/src/features/jobs/domain/usecases/jobs.dart';
import 'package:post_pilot/src/features/post/data/repository/post.dart';
import 'package:post_pilot/src/features/post/data/source/post_api_service.dart';
import 'package:post_pilot/src/features/post/domain/repository/post.dart';
import 'package:post_pilot/src/features/post/domain/usecases/post_usecase.dart';

final sl = GetIt.instance;
void serviceLocator() {
  sl.registerSingleton<DioClient>(DioClient());

// Service
  sl.registerSingleton<AuthApiService>(AuthApiServiceImpl());
  sl.registerSingleton<JobsApiService>(JobsApiServiceImpl());
  sl.registerSingleton<PostApiService>(PostApiServiceImpl());

//Repository
  sl.registerSingleton<AuthRepository>(AuthRepositoryImpl());
  sl.registerSingleton<JobsRepository>(JobsRepositoryImpl());
  sl.registerSingleton<PostRepository>(PostRepositoryImpl());

//UseCase
  sl.registerSingleton<TokenUseCase>(TokenUseCase());
  sl.registerSingleton<JobsUseCases>(JobsUseCases());
  sl.registerSingleton<PostUsecase>(PostUsecase());
  sl.registerSingleton<PostUsecase2>(PostUsecase2());
  sl.registerSingleton<PostUsecaseStartAutomation>(
      PostUsecaseStartAutomation());
}
