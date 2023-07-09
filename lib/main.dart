import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ripple_x/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Navigation',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () async {
                  var data = await Get.to(Home(),
                      arguments: 'Data from main.dart file');
                  print(data);
                  // Get.to(
                  //   // const Home(),
                  //   // Get.off(Home()),
                  //   // Get.offAll(Home()),
                  //   Get.to(Home(), arguments: 'This data from main.dart file'),

                  //   fullscreenDialog: true,
                  //   transition: Transition.zoom,
                  //   duration: const Duration(milliseconds: 300),
                  //   // curve: Curves.bounceInOut,
                  // );
                  // Dialog.fullscreen();
                },
                child: const Text('Go To Home'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
