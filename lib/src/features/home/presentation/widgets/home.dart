import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:post_pilot/src/core/utils/constants/app_colors.dart';
import 'package:post_pilot/src/core/utils/constants/app_dimensions.dart';
import 'package:post_pilot/src/features/home/presentation/bloc/home_bloc.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Home extends StatelessWidget {
  Home({super.key});
  final _socialMediaList = [
    Brands.instagram,
    Brands.facebook,
    Brands.twitter,
    Brands.linkedin,
  ];

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      BlocProvider.of<HomeBloc>(context).add(const GetDataForChart());
    });
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(),
      body: Padding(
        padding: const EdgeInsets.all(AppDimensions.paddingSmall),
        child: RefreshIndicator(
          color: AppColors.primary,
          onRefresh: () async {
            context.read<HomeBloc>().add(GetDataForChart());
          },
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(AppDimensions.paddingSmall),
                child: BlocBuilder<HomeBloc, HomeState>(
                  builder: (context, state) {
                    return GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: _socialMediaList.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                      ),
                      itemBuilder: (context, index) {
                        return InkWell(
                          splashColor: AppColors.primary.withAlpha(100),
                          borderRadius: BorderRadius.circular(30),
                          onTap: () {
                            context.read<HomeBloc>().add(SocialMediaTapped(
                                index: index, context: context));
                          },
                          child: Ink(
                            decoration: BoxDecoration(
                              color: AppColors.background,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                  color: AppColors.primary.withAlpha(50),
                                  spreadRadius: 7,
                                  blurRadius: 10,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Center(
                              child: Brand(
                                _socialMediaList[index],
                                size: 100,
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(AppDimensions.paddingSmall),
                child: BlocBuilder<HomeBloc, HomeState>(
                  builder: (context, state) {
                    return Container(
                      decoration: BoxDecoration(
                        color: AppColors.background,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.primary.withAlpha(50),
                            spreadRadius: 7,
                            blurRadius: 10,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: SfCircularChart(
                        title: ChartTitle(text: 'Social Media Bots Status'),
                        legend: Legend(
                          isVisible: true,
                          position: LegendPosition.bottom,
                          textStyle: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        palette: [
                          AppColors.primary,
                          AppColors.error,
                          AppColors.secondary,
                        ],
                        series: <CircularSeries>[
                          DoughnutSeries<PiChartData, String>(
                            dataSource: getPiChartData(
                                successful: state.successful.toDouble(),
                                fluted: state.fluted.toDouble(),
                                stopped: state.stopped.toDouble()),
                            xValueMapper: (PiChartData data, _) => data.x,
                            yValueMapper: (PiChartData data, _) => data.y,
                            name: 'Status',
                            explode: true,
                            dataLabelSettings: DataLabelSettings(
                              isVisible: true,
                            ),
                            enableTooltip: true,
                          )
                        ],
                        annotations: [
                          CircularChartAnnotation(
                            widget: Text(
                              '${state.successful + state.fluted + state.stopped}',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                        tooltipBehavior: TooltipBehavior(enable: true),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(AppDimensions.paddingSmall),
                child: BlocBuilder<HomeBloc, HomeState>(
                  builder: (context, state) {
                    return Container(
                      decoration: BoxDecoration(
                        color: AppColors.background,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.primary.withAlpha(50),
                            spreadRadius: 7,
                            blurRadius: 10,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: SfCartesianChart(
                        palette: [
                          AppColors.secondary,
                          AppColors.primary,
                          AppColors.error,
                        ],
                        primaryXAxis: CategoryAxis(),
                        title:
                            ChartTitle(text: 'Number of Social Media Bots Run'),
                        legend: Legend(isVisible: true),
                        tooltipBehavior: TooltipBehavior(enable: true),
                        series: [
                          ColumnSeries<BarChartData, String>(
                            dataSource: getBarChartData(
                              instSuccess: state.instagramSuccessful.toDouble(),
                              instFail: state.instagramFluted.toDouble(),
                              fbSuccess: state.fbSuccessful.toDouble(),
                              fbFail: state.fbFluted.toDouble(),
                              twSuccess: state.twitterSuccessful.toDouble(),
                              twFail: state.twitterFluted.toDouble(),
                              liSuccess: state.linkedinSuccessful.toDouble(),
                              liFail: state.linkedinFluted.toDouble(),
                            ),
                            xValueMapper: (BarChartData data, _) => data.x,
                            yValueMapper: (BarChartData data, _) => data.total,
                            name: 'Total',
                            dataLabelSettings:
                                DataLabelSettings(isVisible: true),
                            enableTooltip: true,
                          ),
                          ColumnSeries<BarChartData, String>(
                            dataSource: getBarChartData(
                              instSuccess: state.instagramSuccessful.toDouble(),
                              instFail: state.instagramFluted.toDouble(),
                              fbSuccess: state.fbSuccessful.toDouble(),
                              fbFail: state.fbFluted.toDouble(),
                              twSuccess: state.twitterSuccessful.toDouble(),
                              twFail: state.twitterFluted.toDouble(),
                              liSuccess: state.linkedinSuccessful.toDouble(),
                              liFail: state.linkedinFluted.toDouble(),
                            ),
                            xValueMapper: (BarChartData data, _) => data.x,
                            yValueMapper: (BarChartData data, _) =>
                                data.success,
                            name: 'Successful',
                            dataLabelSettings:
                                DataLabelSettings(isVisible: true),
                            enableTooltip: true,
                          ),
                          ColumnSeries<BarChartData, String>(
                            dataSource: getBarChartData(
                              instSuccess: state.instagramSuccessful.toDouble(),
                              instFail: state.instagramFluted.toDouble(),
                              fbSuccess: state.fbSuccessful.toDouble(),
                              fbFail: state.fbFluted.toDouble(),
                              twSuccess: state.twitterSuccessful.toDouble(),
                              twFail: state.twitterFluted.toDouble(),
                              liSuccess: state.linkedinSuccessful.toDouble(),
                              liFail: state.linkedinFluted.toDouble(),
                            ),
                            xValueMapper: (BarChartData data, _) => data.x,
                            yValueMapper: (BarChartData data, _) => data.fail,
                            name: 'Failed',
                            dataLabelSettings:
                                DataLabelSettings(isVisible: true),
                            enableTooltip: true,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<PiChartData> getPiChartData(
    {required double successful,
    required double fluted,
    required double stopped}) {
  final List<PiChartData> chartData = [
    PiChartData('Successful', successful),
    PiChartData('Fluted', fluted),
    PiChartData('Stopped', stopped),
  ];
  return chartData;
}

class PiChartData {
  PiChartData(this.x, this.y);
  final String x;
  final double y;
}

List<BarChartData> getBarChartData({
  required double instSuccess,
  required double instFail,
  required double fbSuccess,
  required double fbFail,
  required double twSuccess,
  required double twFail,
  required double liSuccess,
  required double liFail,
}) {
  final List<BarChartData> chartData = [
    BarChartData('Instagram', instSuccess, instFail),
    BarChartData('Facebook', fbSuccess, fbFail),
    BarChartData('Twitter', twSuccess, twFail),
    BarChartData('LinkedIn', liSuccess, liFail),
  ];
  return chartData;
}

class BarChartData {
  BarChartData(this.x, this.success, this.fail);
  final String x;
  final double success;
  final double fail;

  double get total => success + fail;
}
