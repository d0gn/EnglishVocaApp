import 'package:flutter/material.dart';
import 'eng.dart';
import 'favorite.dart';
import 'voca.dart';
class Interface extends StatefulWidget {
  const Interface({Key? key}) : super(key: key);

  @override
  State<Interface> createState() => _InterfaceState();
}

class _InterfaceState extends State<Interface> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    Eng(),
    Favorite(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      print(_selectedIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar( title: Text(' TOEIC VOCA ')),
          body: _widgetOptions[_selectedIndex],
          bottomNavigationBar:  BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.text_snippet),
                label: '영단어',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.star),
                label: '즐겨찾기',
              ),
            ],

          ),
        )
    );
  }
  @override
  void initState() {
    //해당 클래스가 호출되었을떄
    super.initState();
}

  @override
  void dispose() {
    super.dispose();
  }
}
// body: 리스트이름[인덱스이름] 이게 중요하다 이게 있어야 바뀐다
