import 'package:flutter/material.dart';
import 'package:practice/first_page_bottom_navigation_bar.dart';

class StarbucksFirst extends StatelessWidget {
  const StarbucksFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset('assets/image/beach.png', width: double.infinity),
                  Column(
                    children: [
                      Container(
                      margin: const EdgeInsets.fromLTRB(35, 50, 120, 20),
                      alignment: Alignment.centerLeft,
                      child: const Expanded(child: Text("윤슬처럼 반짝일\n고객님의 하루!",
                            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),textAlign: TextAlign.left,),),
                      ),
                     SingleChildScrollView(
                       scrollDirection: Axis.horizontal,
                       child: Row(
                           children: [
                             Container(
                               margin: const EdgeInsets.fromLTRB(35, 20, 10, 20),
                               width: 120, height: 40,
                               decoration: BoxDecoration(
                                 color: Colors.white, borderRadius: BorderRadius.circular(20), boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 15)]),
                               child: const Row(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: [
                                   Icon(Icons.star, color: Colors.brown, size: 14,),
                                   Text(' Gold', style: TextStyle(fontSize: 17),),
                                   Text(" 9", style: TextStyle(color: Colors.brown),),
                                   Text("/12", style: TextStyle(color: Colors.black38),),],),
                             ),
                             Container(
                               margin: const EdgeInsets.fromLTRB(0, 20, 10, 20),
                               width: 75, height: 40,
                               decoration: BoxDecoration(
                                 color: Colors.white, borderRadius: BorderRadius.circular(20), boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 15)]),
                               child: const Row(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: [
                                   Icon(Icons.credit_card, color: Colors.black38, size: 17,),
                                   Text(' Pay', style: TextStyle(fontSize: 17),)],),
                             ),
                             Container(
                               margin: const EdgeInsets.symmetric(vertical: 20),
                               width: 120, height: 40,
                                 decoration: BoxDecoration(
                                     color: Colors.white, borderRadius: BorderRadius.circular(20), boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 15)]),
                                 child: const Row(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   children: [
                                     Icon(Icons.local_activity_outlined, color: Colors.black38, size: 17,),
                                     Text(' Coupon', style: TextStyle(fontSize: 17),)],),
                             ),
                           ]
                       ),
                     ),
                    ]
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: const Row(
                  children: [
                    Text("Quick Order", style: TextStyle(fontSize:25,fontWeight:FontWeight.bold)),
                    Spacer(),
                    Text("최근 주문", style: TextStyle(fontSize: 14),),
                  ],
                ),
              ),
              SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    MenuCardView(menu: "제주 말차 크림 프라푸치노", imagePath: "assets/image/말차프라푸치노.png", location: "서강대흥역",), const SizedBox(width: 10),
                    MenuCardView(menu: "아이스 카페 라떼", imagePath: "assets/image/카페라떼.png", location: "서강대흥역"), const SizedBox(width: 10),
                    MenuCardView(menu: "아이스 카라멜 마키야또", imagePath: "assets/image/마끼야또.png", location: "서강대프라자"), const SizedBox(width: 10),
                    MenuCardView(menu: "에스프레소 프라푸치노", imagePath: "assets/image/에스프레소프라푸치노.png", location: "서강대프라자")
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(15, 25, 15, 5),
                width: double.infinity, height: 410,
                decoration: const BoxDecoration(color:Color.fromRGBO(255,242,230,1)),
                child: Image.asset("assets/image/BigEvent.jpg",fit:BoxFit.fill,),
              ),
              NewsCardView(
                  typeOfNews: const Text("NEW MD", style: TextStyle(color: Color.fromRGBO(0,30,201,1),fontSize: 13),),
                  content: RichText(text: const TextSpan(style: TextStyle(color: Colors.black, fontSize: 15),
                    children: <TextSpan>[
                      TextSpan(text: "스타벅스와 함께 \n"),
                      TextSpan(text: "시원한 여름", style: TextStyle(color: Color.fromRGBO(0,30,201,1))),
                      TextSpan(text: "을 보내세요  ")])),
                  period: "", imagePath: "", backgroundColor:Color.fromRGBO(235, 247, 255, 1)),
              NewsCardView(
                  typeOfNews: const Text("EVENT",style: TextStyle(color:Color.fromRGBO(255,113,113,1)),),
                  content: RichText(text:const TextSpan(style:TextStyle(color:Colors.black,fontSize:15),
                  children: <TextSpan>[
                    TextSpan(text: "GELATO FESTA 2+1\n",style:TextStyle(color:Color.fromRGBO(235,113,113,1))),
                    TextSpan(text: "젤라또 2개 구매 시\n젤라또 1종 랜덤 증정  ",)
                  ]),),
                  period: "2024.8.2(금) - 8.15(목)", imagePath: "",
                  backgroundColor:const Color.fromRGBO(255,252,252,1)),
              NewsCardView(
                  typeOfNews: const Text("INTRODUCING",style:TextStyle(color:Color.fromRGBO(255,205,18,1)),),
                  content: RichText(text:const TextSpan(style:TextStyle(color:Colors.black,fontSize:15),
                  children: <TextSpan>[
                    TextSpan(text: "여름 여행, 그리고 드라이브\n"),
                    TextSpan(text: "DT라서 더욱 좋은 스타벅스",style:TextStyle(color:Color.fromRGBO(255,205,18,1)))
                  ]),), 
                  period: "", imagePath: "",
                  backgroundColor: const Color.fromRGBO(255,255,228,1))
            ],
          ),
        ),
        bottomNavigationBar: const FirstPageNavigationBar(),
      ),
    );
  }
}


class MenuCardView extends StatelessWidget {
  String menu;
  String imagePath;
  String location;
  MenuCardView({super.key, required this.menu, required this.imagePath, required this.location});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250, height: 130,
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
        color: Color.fromRGBO(234, 234, 234, 100), borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Row(mainAxisAlignment:MainAxisAlignment.end, children: [Icon(Icons.favorite_border_outlined, color: Colors.black26, size: 16,),]),
          Row(children: [Image.asset(imagePath, height: 45, width: 55,), Text(menu, style: TextStyle(fontSize: 14),)],),
          SizedBox(height: 10),
          Divider(color: Colors.black26, thickness: 1,),
          Row(children: [
            Icon(Icons.location_on_outlined, color: Colors.brown, size: 14,),
            Text(location, style: TextStyle(color: Colors.brown, fontSize: 12, decoration: TextDecoration.underline, decorationColor: Colors.brown, decorationThickness: 1),),
            Spacer(),
            Container(width: 80, height: 20,
                child: Text("바로 주문하기", style: TextStyle(color:Colors.white, fontSize:12),textAlign: TextAlign.center,), decoration:BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(20)),)
          ],),
        ],
      ),
    );
  }
}


class NewsCardView extends StatelessWidget {
  var typeOfNews;
  var content;
  String period;
  String imagePath;
  Color backgroundColor;

  NewsCardView(
      {super.key, required this.typeOfNews, required this.content, required this.period, required this.imagePath, required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      width: double.infinity,
      height: 160,
      decoration: BoxDecoration(color: backgroundColor,
          boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 5)]),
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          Flexible(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                typeOfNews,
                content,
                Text(period,
                  style: TextStyle(color: Colors.black38, fontSize: 12),)
              ],
            ),
          ),
          Flexible(
              flex: 2,
              child: Image.network(imagePath))
        ],
      ),
    );
  }
}