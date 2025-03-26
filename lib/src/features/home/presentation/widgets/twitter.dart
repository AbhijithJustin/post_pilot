import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:post_pilot/src/core/utils/constants/app_colors.dart';
import 'package:post_pilot/src/core/utils/constants/app_dimensions.dart';
import 'package:post_pilot/src/core/widgets/app_sized_box.dart';
import 'package:post_pilot/src/features/home/presentation/bloc/home_bloc.dart';
import 'package:post_pilot/src/features/jobs/domain/entities/jobs.dart';

class Twitter extends StatelessWidget {
  const Twitter({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      BlocProvider.of<HomeBloc>(context).add(const GetDataForChart());
    });

    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        final jobsData = List<JobsEntity>.from(state.twitterJobsData);
        jobsData.sort((a, b) {
          if (a.startTime == null && b.startTime == null) return 0;
          if (a.startTime == null) return 1;
          if (b.startTime == null) return -1;
          return b.startTime!.compareTo(a.startTime!);
        });

        return Scaffold(
          appBar: AppBar(
            title: const Text("Twitter"),
          ),
          body: jobsData.isEmpty
              ? Center(
                  child: CircularProgressIndicator(
                    color: AppColors.primary,
                  ),
                )
              : ListView.builder(
                  itemCount: jobsData.length,
                  itemBuilder: (context, index) {
                    final job = jobsData[index];
                    final startTime = job.startTime != null
                        ? DateTime.parse(job.startTime!.toString())
                        : null;
                    final endTime = job.endTime != null
                        ? DateTime.parse(job.endTime!.toString())
                        : null;
                    final formattedStartDate = startTime != null
                        ? DateFormat('dd/MM/yyyy').format(startTime)
                        : 'N/A';
                    final formattedStartTime = startTime != null
                        ? DateFormat('HH:mm:ss').format(startTime)
                        : 'N/A';
                    final formattedEndTime = endTime != null
                        ? DateFormat('HH:mm:ss').format(endTime)
                        : 'N/A';
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppDimensions.paddingMedium,
                        vertical: AppDimensions.paddingSmall,
                      ),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: AppColors.background,
                          borderRadius:
                              BorderRadius.circular(AppDimensions.borderRadius),
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.primary.withAlpha(50),
                              spreadRadius: 7,
                              blurRadius: 10,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding:
                              const EdgeInsets.all(AppDimensions.paddingLarge),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                job.releaseName ?? "Name Of Job",
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10),
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: (job.state == "Successful")
                                    ? AppColors.primary
                                    : (job.state == "Running")
                                        ? AppColors.secondary
                                        : (job.state == "Pending")
                                            ? Colors.orange
                                            : AppColors.error,
                                child: Icon(
                                  (job.state == "Successful")
                                      ? Icons.done_rounded
                                      : (job.state == "Running")
                                          ? Icons.directions_run
                                          : (job.state == "Pending")
                                              ? Icons.sync_problem
                                              : Icons.clear_rounded,
                                  size: 50,
                                  color: AppColors.background,
                                ),
                              ),
                              AppSizedBox.hSmall,
                              Text(
                                "${job.state == "Faulted" ? "Automation Failed" : "Automation ${job.state}"} !",
                                style: TextStyle(
                                  color: (job.state == "Successful")
                                      ? AppColors.primary
                                      : (job.state == "Running")
                                          ? AppColors.secondary
                                          : (job.state == "Pending")
                                              ? Colors.orange
                                              : AppColors.error,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              AppSizedBox.hSmall,
                              Text(
                                "${job.info}",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 3,
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                "${job.hostMachineName} / ${job.localSystemAccount}",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                              Text(
                                formattedStartDate,
                              ),
                              Text(
                                "Run Time: $formattedStartTime to $formattedEndTime",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
        );
      },
    );
  }
}
