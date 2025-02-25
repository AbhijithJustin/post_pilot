import 'package:flutter/material.dart';
import 'package:post_pilot/src/core/utils/constants/app_theme.dart';
import 'package:post_pilot/src/core/widgets/page_navigation_root/slide_transition_rout.dart';
import 'package:post_pilot/src/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:post_pilot/src/features/auth/presentation/pages/login_page.dart';
import 'package:post_pilot/src/features/auth/presentation/pages/register_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:post_pilot/src/features/home/presentation/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) => AuthBloc(),
        ),
      ],
      child: MaterialApp(
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
            case '/home':
              return SlideTransitionRoute(page: HomePage());
            default:
              return null;
          }
        },
      ),
    );
  }
}
