import 'package:flutter/material.dart';
import 'package:post_pilot/service_locator.dart';
import 'package:post_pilot/src/core/utils/constants/app_theme.dart';
import 'package:post_pilot/src/core/widgets/page_navigation_root/pop_up_transition_rout.dart';
import 'package:post_pilot/src/core/widgets/page_navigation_root/slide_transition_rout.dart';
import 'package:post_pilot/src/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:post_pilot/src/features/auth/presentation/pages/login_page.dart';
import 'package:post_pilot/src/features/auth/presentation/pages/register_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:post_pilot/src/features/home/presentation/bloc/home_bloc.dart';
import 'package:post_pilot/src/features/home/presentation/pages/home_page.dart';
import 'package:post_pilot/src/features/home/presentation/widgets/facebook.dart';
import 'package:post_pilot/src/features/home/presentation/widgets/instagram.dart';
import 'package:post_pilot/src/features/home/presentation/widgets/linkedin.dart';
import 'package:post_pilot/src/features/home/presentation/widgets/twitter.dart';
import 'package:post_pilot/src/features/jobs/presentation/bloc/jobs_bloc.dart';
import 'package:post_pilot/src/features/jobs/presentation/pages/jobs_page.dart';
import 'src/features/post/Presentation/pages/post_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  serviceLocator();

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
        BlocProvider<JobsBloc>(
          create: (context) => JobsBloc(),
        ),
        BlocProvider<HomeBloc>(
          create: (context) => HomeBloc(),
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
            case '/post':
              return PopUpTransitionRoute(page: PostPage());
            case '/jobs':
              return SlideTransitionRoute(page: JobsPage());
            case '/facebook':
              return PopUpTransitionRoute(page: Facebook());
            case '/instagram':
              return PopUpTransitionRoute(page: Instagram());
            case '/twitter':
              return PopUpTransitionRoute(page: Twitter());
            case '/linkedIn':
              return PopUpTransitionRoute(page: LinkedIn());

            default:
              return null;
          }
        },
      ),
    );
  }
}
