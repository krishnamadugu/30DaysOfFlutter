import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("catalog app"),
      ),
      body: const Center(
        child: Text("Welcome to catalog"),
      ),
      drawer: const Drawer(),
    );
  }
}
