import 'package:flutter/material.dart';
import 'package:post_pilot/src/core/utils/constants/app_theme.dart';
import 'package:post_pilot/src/core/widgets/page_navigation_root/slide_transition_rout.dart';
import 'package:post_pilot/src/features/auth/presentation/pages/login_page.dart';
import 'package:post_pilot/src/features/auth/presentation/pages/register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      initialRoute: '/login',
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/login':
            return SlideTransitionRoute(page: LoginPage());

          case '/register':
            return SlideTransitionRoute(page: RegisterPage());
          default:
            return null;
        }
      },
    );
  }
}
