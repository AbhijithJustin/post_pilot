import 'package:flutter/material.dart';

class Bots extends StatelessWidget {
  const Bots({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bots"),
      ),
      drawer: Drawer(),
      body: Center(
        child: Text("Bots"),
      ),
    );
  }
}
