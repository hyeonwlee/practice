import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice/view/starbucks_bottom_nav_page.dart';
import '../controller/starbucks_third_page_controller.dart';

class StarbucksThirdPage extends GetView<StarbucksThirdPageController> {
  const StarbucksThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.white,
      body: DefaultTabController(
        length: 2,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const Text(" Order", style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),),
              const SizedBox(height: 5,),
              const TabBar(
                  unselectedLabelStyle: TextStyle(fontSize: 15, color: Colors.grey,),
                  labelStyle: TextStyle(fontSize: 15, color: Colors.black),
                  indicatorColor: Color.fromRGBO(0, 89, 45, 1),
                  indicatorWeight: 2,
                  tabs: [
                    Tab(text: "전체 메뉴",),
                    Tab(text: "나만의 메뉴",)
                  ]),
              Container(width: double.infinity, height: 1, decoration: const BoxDecoration(color: Colors.white10, boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 5, offset: Offset(0, 3))]),),
              Expanded(
                child: TabBarView(
                    children: [
                      DefaultTabController(
                          length: 2,
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const TabBar(
                                    unselectedLabelStyle: TextStyle(fontSize: 15, color: Colors.grey,),
                                    labelStyle: TextStyle(fontSize: 15, color: Colors.black),
                                    indicatorColor: Color.fromRGBO(0, 89, 45, 1),
                                    indicatorWeight: 2,
                                    tabs: [
                                      Tab(text: "음료",),
                                      Tab(text: "푸드",),
                                    ]),
                                Container(width: double.infinity, height: 1, color: Colors.white10,),
                                SizedBox(height: 30,),
                                Expanded(
                                    child: TabBarView(
                                        children: [
                                          DrinkList(),
                                          FoodList(),
                                        ]
                                    )
                                )
                              ],
                            ),
                          )),
                      Column(children: [])
                    ]),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const StarbucksBottomNavPage(),
    ));
  }
}

class DrinkList extends StatelessWidget {
  const DrinkList({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      //미완성 죄송합니다...
    );
  }
}

class FoodList extends GetView<StarbucksThirdPageController> {
  const FoodList({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
          itemCount: controller.productList.length,
          separatorBuilder: (context, int index){
            return const SizedBox(height: 20,);
          },
          itemBuilder: (context, index) {
            final product = controller.productList[index];
            return Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                    child: Image.network(product.images, width: 80, height: 80, fit: BoxFit.fill,))),
                const SizedBox(width: 20,),
                Text("디저트$index", style: TextStyle(fontSize: 15, color: Colors.black)),
              ],
            );
          },
    );
  }
}

class Food extends GetView<StarbucksThirdPageController> {
  final index;
  const Food({super.key, required this.index});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, height: 150,
      child: Row(
        children: [
          Image.network("$controller.productList[index].images"),
          Text("디저트", style: TextStyle(fontSize: 10, color: Colors.black),)
        ],
      ),
    );
  }
}
