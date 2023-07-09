import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("This is my home page"),
            ElevatedButton.icon(
                onPressed: () {
                  Get.back(
                      result:
                          "This data is sent by home.dart file to main.dart file");
                },
                icon: const Icon(Icons.arrow_back),
                label: const Text("Go back")),
            Text(Get.arguments),
          ],
        ),
      ),
    );
  }
}
