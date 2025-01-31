import 'package:flutter/material.dart';
import 'package:post_pilot/src/core/utils/constants/app_theme.dart';

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
      home: const DemoDash(),
    );
  }
}

class DemoDash extends StatelessWidget {
  const DemoDash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo Dash'),
      ),
      body: const Center(
        child: Text('Hello, World!'),
      ),
    );
  }
}
