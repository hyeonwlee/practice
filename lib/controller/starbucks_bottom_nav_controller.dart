import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StarbucksBottomNavController extends GetxController {
  final currentIndex = 0.obs;

  void changeIndex(int index){
    switch(index){
      case 0:
        Get.offAllNamed('/starbucks/first');
        currentIndex.value = index;
        break;

    }
  }

}