import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/starbucks_second_page_controller.dart';

class StarbucksSecondOnePage extends GetView<StarbucksSecondPageController> {
  const StarbucksSecondOnePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<StarbucksSecondPageController>();
    return SafeArea(child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(onPressed: (){Get.back();}, icon: const Icon(Icons.arrow_back_ios, size:25),),
              const SizedBox(height: 5,),
              const Text(" 결제수단 관리", style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),),
              const SizedBox(height: 5,),
              Row(
                children: [
                  Obx(()=> Column(children:[
                    TextButton(onPressed: (){controller.changeTextColor();}, child: Text("스타벅스 카드", style: TextStyle(fontSize: 15, color: controller.textButtonColor1.value,),)),
                    Container(width: 110, height: 2, decoration: BoxDecoration(color: controller.underlineColor1.value),)])),
                  SizedBox(width: 10,),
                  Obx(()=> Column(children: [
                    TextButton(onPressed: (){controller.changeTextColor();}, child: Text("신용카드 간편결제", style: TextStyle(fontSize: 15, color: controller.textButtonColor2.value),)),
                    Container(width: 110, height: 2, decoration: BoxDecoration(color: controller.underlineColor2.value),)]))
                ],
              ),
              Container(width: double.infinity, height: 1, decoration: const BoxDecoration(color: Colors.black26, boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 5, offset: Offset(0, 5))]),),
              const SizedBox(height: 20,),
              Container(
                width: double.infinity, height: 100,
                child: Row(
                  children: [
                    Obx(()=> GestureDetector(onTap: ()=>Get.bottomSheet(CardBottomSheet(cardList: controller.representativeCardList)),
                        child: Image.network(controller.representativeCardList[0], width: 150, height: 100,))),
                    const Spacer(flex: 1,),
                    Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                      const Spacer(flex: 3,),
                      Obx(()=> Text(controller.representativeCardList[1], style: const TextStyle(fontSize: 15),)),
                      const Spacer(flex: 1,),
                      Obx(()=> Text(controller.representativeCardList[2], style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)),
                      const Spacer(flex: 4,)]
                    ),
                    const Spacer(flex: 9,),
                    const Icon(Icons.star, color: Colors.brown, size: 20,),
                    const Spacer(flex: 1,)
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              Container(width: double.infinity, height: 1, decoration: const BoxDecoration(color: Colors.black12),),
              const SizedBox(height: 20,),
              normalCardView(normalCardList: controller.normalCardList1)
            ],
          ),
        ),
      ),
    );
  }
}

class normalCardView extends StatelessWidget {
  final normalCardList;
    normalCardView({super.key, required this.normalCardList});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<StarbucksSecondPageController>();
      return SizedBox(
        width: double.infinity, height: 50,
        child: Row(
          children: [
            Obx(()=> GestureDetector(onTap: ()=>Get.bottomSheet(CardBottomSheet(cardList: normalCardList)),
                child: Image.network(normalCardList[0], width: 75, height: 50,))),
            const Spacer(flex: 1,),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(flex: 3,),
                  Obx(()=> Text(normalCardList[1], style: const TextStyle(fontSize: 10),)),
                  const Spacer(flex: 1,),
                  Obx(()=> Text(normalCardList[2], style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),)),
                  const Spacer(flex: 4,)]
            ),
            const Spacer(flex: 9,),
            IconButton(onPressed: () {
              controller.changeRepresentativeCard();
              }, icon: const Icon(Icons.star, color: Colors.grey, size: 15,)),
            const Spacer(flex: 1,)
          ],
        ),
      );
  }
}

class CardBottomSheet extends StatelessWidget {
  final cardList;
  const CardBottomSheet({super.key, required this.cardList});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
      ),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          const Padding(padding: EdgeInsets.all(10)),
          Container(width:60,height:3, decoration:BoxDecoration(color:Colors.black54, borderRadius:BorderRadius.circular(4)),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(flex: 7),
                Column(children: [
                  Text(cardList[1], style: const TextStyle(fontSize: 10, color: Colors.black),textAlign:TextAlign.center,),
                  Text(cardList[2], style: const TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold), textAlign:TextAlign.center,)
                ]),
                const Spacer(flex: 5),
                IconButton(onPressed: (){}, icon: const Icon(Icons.edit, size:20,),alignment:Alignment.centerRight,),
              ],),
            const SizedBox(height: 20,),
            Image.network(cardList[0], width: 200,),
            const SizedBox(height: 40,),
            Image.network("https://search.pstatic.net/sunny/?src=https%3A%2F%2Fcdn.pixabay.com%2Fphoto%2F2014%2F04%2F02%2F16%2F19%2Fbarcode-306926_1280.png&type=l340_165", width: 350, height: 50, fit: BoxFit.fill,)
          ],
      ),
    );
  }
}

class StarbucksSecondTwoPage extends StatelessWidget {
  const StarbucksSecondTwoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<StarbucksSecondPageController>();
    return SafeArea(child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [
              IconButton(onPressed: (){Get.back();}, icon: const Icon(Icons.arrow_back_ios, size:25),),
              const Text('Coupon', style: TextStyle(fontSize: 20),)
            ]),
            const SizedBox(height: 5,),
            Row(
              children: [
                Obx(()=> Column(children:[
                  TextButton(onPressed: (){controller.changeTextColor();}, child: Text("스타벅스 쿠폰", style: TextStyle(fontSize: 15, color: controller.textButtonColor1.value,),)),
                  Container(width: 110, height: 2, decoration: BoxDecoration(color: controller.underlineColor1.value),)])),
                SizedBox(width: 10,),
                Obx(()=> Column(children: [
                  TextButton(onPressed: (){controller.changeTextColor();}, child: Text("모바일 상품권", style: TextStyle(fontSize: 15, color: controller.textButtonColor2.value),)),
                  Container(width: 110, height: 2, decoration: BoxDecoration(color: controller.underlineColor2.value),)]))
              ],
            ),
            Container(width: double.infinity, height: 1, decoration: const BoxDecoration(color: Colors.black26, boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 5, offset: Offset(0, 5))]),),
            const SizedBox(height: 20,),
            CouponCardView(couponName: "별 12개 적립 무료음료 쿠폰", date: "2024.09.05까지"),
            CouponCardView(couponName: "2024 서머 e-프리퀀시 무료 음료 대체 e-쿠폰", date: "2024.08.30까지")
          ],
        ),
      ),
    ));
  }
}

class CouponCardView extends StatelessWidget {
  String couponName;
  String date;
  CouponCardView({super.key, required this.couponName, required this.date});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Starbucks", style: TextStyle(fontSize: 10, color: Colors.black54),),
          Text(couponName, style: const TextStyle(fontSize: 15, color: Colors.black),),
          Text(date, style: const TextStyle(fontSize: 10, color: Colors.black54),),
          SizedBox(height: 20,),
          Container(width: double.infinity, height: 1, decoration: const BoxDecoration(color: Colors.black12),),
          SizedBox(height: 20,)
        ],
      ),
    );
  }
}
