import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstPageNavigationBar extends StatefulWidget {
  const FirstPageNavigationBar({super.key});

  @override
  State<FirstPageNavigationBar> createState() => _FirstPageNavigationBarState();
}

class _FirstPageNavigationBarState extends State<FirstPageNavigationBar> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: (index){
        if (index>5||index<0) return;
        setState(() {
          _currentIndex = index;
        });
      },
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Color.fromRGBO(0,89,45,1),
      unselectedItemColor: Colors.black26,
      selectedLabelStyle: TextStyle(color: Color.fromRGBO(0,89,45,1)),
      unselectedLabelStyle: TextStyle(color: Colors.black26),
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
    );
  }
}
