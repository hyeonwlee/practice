import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/starbucks_bottom_nav_controller.dart';

class StarbucksBottomNavPage extends GetView<StarbucksBottomNavController> {
  const StarbucksBottomNavPage({super.key});

  @override
  Widget build(BuildContext context) {
    final StarbucksBottomNavController controller = Get.find<StarbucksBottomNavController>();
    return Obx(() =>
       BottomNavigationBar(
        currentIndex: controller.currentIndex.value,
        onTap: (index) {
          if (index == 1) {
            showModalBottomSheet(context: context,
                builder: (context) {
                  return const BottomSheetContent();
                },);
          }
          else {
            controller.changeIndex(index);
          }
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color.fromRGBO(0, 89, 45, 1),
        unselectedItemColor: Colors.black26,
        selectedLabelStyle: const TextStyle(
            color: Color.fromRGBO(0, 89, 45, 1)),
        unselectedLabelStyle: const TextStyle(color: Colors.black26),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.credit_card),
              label: "Pay"),
          BottomNavigationBarItem(
              icon: Icon(Icons.coffee),
              label: "Order"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag),
              label: "Shop"),
          BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz),
              label: "Other"),
        ],
      )
    );
  }
}

class BottomSheetContent extends StatelessWidget {
  const BottomSheetContent({super.key});

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
              const Text("Pay", style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),textAlign:TextAlign.center,),
              const Spacer(flex: 5),
              IconButton(onPressed: (){Get.toNamed("/starbucks/second/one");}, icon: const Icon(Icons.format_list_bulleted, size:20,),alignment:Alignment.centerRight,),
            ],),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const Padding(padding: EdgeInsets.symmetric(horizontal:10)),
                SizedBox(
                  width: 230, height: 200,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Starbucks Card", style: TextStyle(fontSize: 12),),
                        Image.network("https://image.istarbucks.co.kr/cardImg/20231215/010767_WEB.png", width:180, height:130,),
                        Image.network("https://image.istarbucks.co.kr/cardImg/20221114/009646_WEB.png", width:180, height:130,)
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 230, height: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("신용카드", style: TextStyle(fontSize: 12),),
                      Image.network("https://image.istarbucks.co.kr/cardImg/20231228/010826_WEB.png", width:180, height:130,)
                    ],
                  ),
                )
              ],
            ),
          ),
          const Spacer(),
          Container(margin: const EdgeInsets.symmetric(horizontal:20), width: double.infinity, height: 1, color: Colors.black26,),
          const SizedBox(height: 10,),
          Row(
            children: [
              const SizedBox(width: 20,),
              Flexible(
                flex: 4,
                child: Container(
                  decoration: BoxDecoration(border: Border.all(color: Colors.black12, width: 1), borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      const SizedBox(width: 5,),
                      const Icon(Icons.local_activity_outlined, size: 17,),
                      TextButton(onPressed: (){Get.toNamed('/starbucks/second/two');}, child: Text("  스타벅스 쿠폰", style: TextStyle(color: Colors.black, fontSize: 12)),)
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 10,),
              Flexible(
                flex: 4,
                child: Container(
                  decoration: BoxDecoration(border: Border.all(color: Colors.black12, width: 1), borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      const SizedBox(width: 5,),
                      const Icon(Icons.card_giftcard, size: 17,),
                      TextButton(onPressed: (){Get.toNamed('/starbucks/second/two');}, child: Text("  모바일 상품권", style: TextStyle(color: Colors.black, fontSize: 12)),)
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 20,),
            ],
          ),
          const SizedBox(height: 20,)
        ],
      ),
    );
  }
}
