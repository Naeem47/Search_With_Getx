import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'views/View.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter GetX Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => FollowerView()),
        // Add more routes if needed
      ],
    );
  }
}
