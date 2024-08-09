import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice/routes/pages.dart';
import 'package:practice/view/starbucks_first_page.dart';
import 'controller/starbucks_bottom_nav_controller.dart';

void main() {
  Get.put(StarbucksBottomNavController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'practice',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: const StarbucksFirstPage(),
      getPages: Pages.allPages,
    );
  }
}