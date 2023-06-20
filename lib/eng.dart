import 'package:english/favorite.dart';
import 'package:flutter/material.dart';
import 'package:english/voca.dart';
import 'Word.dart';
import 'sample.dart';

class Eng extends StatefulWidget {
  const Eng({Key? key}) : super(key: key);

  @override
  State<Eng> createState() => _EngState();
}

class _EngState extends State<Eng> {
  int _selectedIndex = 0;
  void changevoca(a) {
    test = a;
  }
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
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical, // 스크롤 방향 수직으로
            child: Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  Container(
                    height: 150, width: 400, margin: EdgeInsets.all(15),
                    child: ElevatedButton(
                        child: Text('Day 01: 백수탈출'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Voca()),
                          );
                          changevoca(words1);
                        }
                    ),
                  ),
                  Container(
                    height: 150, width: 400, margin: EdgeInsets.all(15),
                    child: ElevatedButton(
                        child: Text('Day 02: 드레스코드'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Voca()),
                          );
                          changevoca(words2);
                        }
                    ),
                  ),
                  Container(
                    height: 150, width: 400, margin: EdgeInsets.all(15),
                    child: ElevatedButton(
                        child: Text('Day 03: 사무의 달인'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Voca()),
                          );
                          changevoca(words3);
                        }
                    ),
                  ),
                  Container(
                    height: 150, width: 400, margin: EdgeInsets.all(15),
                    child: ElevatedButton(
                        child: Text('Day 04: 업무 노하우'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Voca()),
                          );
                          changevoca(words4);
                        }
                    ),
                  ),
                  Container(
                    height: 150, width: 400, margin: EdgeInsets.all(15),
                    child: ElevatedButton(
                        child: Text('Day 05: 비밀병기'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Voca()),
                          );
                          changevoca(words5);
                        }
                    ),
                  ),
                  Container(
                    height: 150, width: 400, margin: EdgeInsets.all(15),
                    child: ElevatedButton(
                        child: Text('Day 06: 쉴 휴'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Voca()),
                          );
                          changevoca(words6);
                        }
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }

}