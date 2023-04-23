import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomePage"),
      ),
      body: Container(
      
        child: const Center(
            child: Text(
          "Home",
          style: TextStyle(fontSize: 40),
        )),
      ),
    );
  }
}
