import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Bottom Sheets',
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
                  onPressed: () {
                    Get.bottomSheet(
                      Wrap(
                        children: [
                          ListTile(
                            leading: const Icon(Icons.wb_sunny_outlined),
                            title: Text('Light mode'),
                            onTap: () {
                              Get.changeTheme(ThemeData.light());
                            },
                          ),
                          ListTile(
                            leading: const Icon(Icons.wb_sunny),
                            title: Text('Dark mode'),
                            onTap: () {
                              Get.changeTheme(ThemeData.dark());
                            },
                          )
                        ],
                      ),
                      barrierColor: Colors.pink,
                      backgroundColor: Colors.yellow,
                      isDismissible: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3.3),
                        side: BorderSide(
                          color: Colors.blue,
                        ),
                      ),
                      enableDrag: false,
                    );
                  },
                  child: const Text('Bottom Sheet'))
            ],
          ),
        ),
      ),
    );
  }
}
