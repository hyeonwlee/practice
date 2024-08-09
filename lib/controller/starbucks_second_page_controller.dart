import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice/view/starbucks_second_page.dart';

class StarbucksSecondPageController extends GetxController {

  final textButtonColor1 = Colors.black.obs;
  final textButtonColor2 = Colors.black45.obs;
  final underlineColor1 = Colors.black.obs;
  final underlineColor2 = Colors.white.obs;
  final pageNumber = 0.obs;

  final representativeCardList = <String>["https://image.istarbucks.co.kr/cardImg/20231215/010767_WEB.png", "Greeting Card", "37,000원"].obs;
  final normalCardList1 = <String>["https://image.istarbucks.co.kr/cardImg/20221114/009646_WEB.png", "스타벅스 e카드", "0원"].obs;


  void changeTextColor(){
    if (textButtonColor2.value == Colors.black45) {
      textButtonColor2.value = Colors.black;
      textButtonColor1.value = Colors.black45;
      underlineColor1.value = Colors.white;
      underlineColor2.value = Colors.black;
      pageNumber.value = 1;
    }
    else if (textButtonColor1.value == Colors.black45) {
      textButtonColor1.value = Colors.black;
      textButtonColor2.value = Colors.black45;
      underlineColor1.value = Colors.black;
      underlineColor2.value = Colors.white;
      pageNumber.value = 0;
    }
  }

  void changeRepresentativeCard(){
    final temp = List.of(representativeCardList);
    representativeCardList[0] = normalCardList1[0];
    representativeCardList[1] = normalCardList1[1];
    representativeCardList[2] = normalCardList1[2];
    normalCardList1[0] = temp[0];
    normalCardList1[1] = temp[1];
    normalCardList1[2] = temp[2];
  }

}