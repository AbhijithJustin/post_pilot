import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:post_pilot/src/core/utils/constants/app_colors.dart';
import 'package:post_pilot/src/features/home/presentation/widgets/bots.dart';
import 'package:post_pilot/src/features/home/presentation/widgets/home.dart';
import 'package:post_pilot/src/features/home/presentation/widgets/jobs.dart';
import 'package:post_pilot/src/features/home/presentation/widgets/machines.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _bottomNavIndex = 0; // Default index of the bottom navigation bar

  final _iconList = <IconData>[
    Icons.home,
    Icons.engineering,
    Icons.smart_toy,
    Icons.precision_manufacturing,
  ];
  final _screenList = <Widget>[Home(), Jobs(), Bots(), Machines()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screenList[_bottomNavIndex],
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        child: Icon(
          Icons.add,
          color: AppColors.background,
        ),
        backgroundColor: AppColors.secondary,
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        backgroundColor: AppColors.primary,
        icons: _iconList,
        activeColor: AppColors.secondary,
        inactiveColor: AppColors.background,
        activeIndex: _bottomNavIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.smoothEdge,
        onTap: (index) => setState(() => _bottomNavIndex = index),
      ),
    );
  }
}
