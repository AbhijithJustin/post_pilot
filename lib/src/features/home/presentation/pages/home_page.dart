import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:post_pilot/src/core/utils/constants/app_colors.dart';
import 'package:post_pilot/src/features/home/presentation/bloc/home_bloc.dart';
import 'package:post_pilot/src/features/home/presentation/widgets/home.dart';
import 'package:post_pilot/src/features/jobs/presentation/pages/jobs_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final _iconList = <IconData>[
    Icons.home,
    Icons.engineering,
    // Icons.smart_toy,
    // Icons.precision_manufacturing,
  ];

  final _screenList = <Widget>[
    Home(),
    JobsPage(),
    // Bots(),
    // Machines(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Scaffold(
          body: _screenList[state.selectedIndex],
          floatingActionButton: FloatingActionButton(
            shape: CircleBorder(),
            backgroundColor: AppColors.secondary,
            child: Icon(
              Icons.add,
              color: AppColors.background,
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/post');
            },
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: AnimatedBottomNavigationBar(
            borderColor: AppColors.background,
            borderWidth: 20,
            backgroundColor: AppColors.primary,
            icons: _iconList,
            activeColor: AppColors.secondary,
            inactiveColor: AppColors.background,
            activeIndex: state.selectedIndex,
            gapLocation: GapLocation.center,
            notchSmoothness: NotchSmoothness.smoothEdge,
            onTap: (index) =>
                context.read<HomeBloc>().add(BottomNavigationTapped(index)),
          ),
        );
      },
    );
  }
}
