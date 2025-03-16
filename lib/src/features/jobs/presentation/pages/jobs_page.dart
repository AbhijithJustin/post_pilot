import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:post_pilot/src/features/jobs/presentation/bloc/jobs_bloc.dart';

class JobsPage extends StatelessWidget {
  const JobsPage({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      BlocProvider.of<JobsBloc>(context).add(GetJobs());
    });
    return Scaffold(
      appBar: AppBar(
        title: const Text("Jobs"),
      ),
      drawer: Drawer(),
      body: BlocBuilder<JobsBloc, JobsState>(
        builder: (context, state) {
          // print(state.jobsData[0].releaseName.toString());

          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (state.jobsData.isNotEmpty)
                  Text(state.jobsData[0].releaseName.toString())
                else
                  Text('No jobs available'),
                if (state.jobsData.isNotEmpty)
                  Text(state.jobsData[0].state.toString())
                else
                  Text('No jobs available'),
                if (state.jobsData.isNotEmpty)
                  Text(state.jobsData[0].id.toString())
                else
                  Text('No jobs available'),
                ElevatedButton(
                  onPressed: () async {
                    //  final result = await sl<TokenUseCase>().call(TokenReqParams());
                    // final result = await sl<JobsUseCases>().call(null);
                    // context.read<JobsBloc>().add(GetJobs());
                    // log(state.jobsData.map((d)=>print(d).toString());
                    log(state.jobsData[0].releaseName.toString());
                  },
                  child: Text('get Jobs'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
