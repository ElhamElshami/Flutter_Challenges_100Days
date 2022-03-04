import 'package:challenge/widgets/card1.dart';
import 'package:challenge/widgets/card2.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  static List<Widget> pages = <Widget>[
     const Card1(),
    const Card2(),
    Container(
      color: Colors.blue,
    )
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fooderlich',
            // 4
            style: Theme.of(context).textTheme.headline6),
      ),
      body: Center(child: pages[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
          selectedItemColor:
              Theme.of(context).textSelectionTheme.selectionColor,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.card_giftcard), label: 'Card'),
            BottomNavigationBarItem(
                icon: Icon(Icons.card_giftcard), label: 'Card2'),
            BottomNavigationBarItem(
                icon: Icon(Icons.card_giftcard), label: 'Card3'),
          ]),
    );
  }
}
