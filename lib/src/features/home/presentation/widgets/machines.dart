import 'package:flutter/material.dart';

class Machines extends StatelessWidget {
  const Machines({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Machines"),
      ),
      drawer: Drawer(),
      body: Center(
        child: Text("Machines"),
      ),
    );
  }
}
