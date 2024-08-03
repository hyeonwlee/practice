import 'package:flutter/material.dart';

class CarrotPage extends StatelessWidget {
  const CarrotPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 410,
        height: 210,
        margin: EdgeInsets.symmetric(vertical: 300),
        color: Colors.white,
        child: Row(
          children: [
            Container(
              height: 210,
              width: 130,
              margin: const EdgeInsets.fromLTRB(18, 0, 0, 20),
              child: Image.asset("assets/image/당근 카드뷰.jpg"),
            ),
            Container(
              height: 210,
              width: 235,
              margin: EdgeInsets.fromLTRB(15, 30, 0, 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      Expanded(child: Text("고디바 더블 초콜릿 소프트 아이스크림 1+1", style: TextStyle(color: Colors.black, fontSize: 25),),),
                      Text("⋮", style: TextStyle(color: Colors.grey, fontSize: 25),),
                    ],
                  ),
                  Text("마포구 아현동 · 16분 전", style: TextStyle(color: Colors.grey, fontSize: 19),),
                  Row(
                    children: [
                      Container(
                        height: 20, width: 60,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(3), color: Colors.black54),
                        child: Text("  거래완료", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),),
                      ),
                      Text(" 9,000원", style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),)
                    ],
                  ),

                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.forum_outlined, size: 20),
                      Text("1"),
                      Icon(Icons.favorite_border_outlined, size: 20),
                      Text("1"),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
