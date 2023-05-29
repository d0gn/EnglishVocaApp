import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstPage(),
    );
  }
}


// 메인 페이지
class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar( title: Text(' TOEIC VOCA ')),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical, // 스크롤 방향 수직으로
          child: Align(
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                Container(
                  height: 150, width: 400, color: Colors.red, margin: EdgeInsets.all(15),
                  child: ElevatedButton(
                    child: Text('1번'),
                    onPressed: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Page()),
                      );
                    }
                  ),
                ),
                Container(
                  height: 150, width: 400, color: Colors.red, margin: EdgeInsets.all(15),
                  child: ElevatedButton(
                      child: Text('1번'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Page()),
                        );
                      }
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  child: Text('영어 단어'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Page()),
                    );
                  },
              ),
              ElevatedButton(onPressed: () {}, child: Text('즐겨 찾기'))
            ],
          ),
        ),
      )
    );
  }
}


// 단어 페이지
class Page extends StatelessWidget {
  Voca test1 = Voca('Apple', '사과');

  Page({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(' TOEIC VOCA '),
          actions: <Widget>[
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                }
                ,
                icon: Icon(Icons.navigate_before))
          ],
        ),
        body: Column(
          children: [
            Container(
              height: 150, width: 400, color: Colors.green, margin: EdgeInsets.fromLTRB(20, 130, 20, 0), // 나중에 비율로 바꾸자
              child: Align(
                alignment: Alignment.center,
                child: Text(test1.eng, style: TextStyle(fontSize: 40)),
              ),
            ),
            Container(
              height: 50, width: 400, color: Colors.blue, margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child:
                Align(
                  alignment: Alignment.center,
                  child: Text(test1.mean, style: TextStyle(fontSize: 30),
                  ),
                ),
            ),
            Container(
              height: 50, width: 400, color: Colors.red, margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Align(
                alignment: Alignment.center,
                child: Text('This is Apple.', style: TextStyle(fontSize: 20),),
              ),
            ),
          ],
        ),

        bottomNavigationBar: BottomAppBar(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {},
                  child: Text('이전'),
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: Text('셔플')),
              ElevatedButton(
                  onPressed: () {},
                  child: Text('즐겨 찾기')),
              ElevatedButton(
                  onPressed: () {},
                  child: Text('다음')),
            ],
          ),
        ),
      ),
    );
  }
}

// 단어 클래스
class Voca {
  String eng = '';
  String mean = '';

  Voca(String eng, String mean){
    eng = eng;
    mean = mean;
  }
}

class favorite extends StatelessWidget {
  const favorite({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar( title: Text(' TOEIC VOCA ')),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical, // 스크롤 방향 수직으로
            child: Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  Container(
                    height: 150, width: 400, color: Colors.red, margin: EdgeInsets.all(15),
                    child: ElevatedButton(
                        child: Text('1번'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Page()),
                          );
                        }
                    ),
                  ),
                  Container(
                    height: 150, width: 400, color: Colors.red, margin: EdgeInsets.all(15),
                    child: ElevatedButton(
                        child: Text('1번'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Page()),
                          );
                        }
                    ),
                  )
                ],
              ),
            ),
          ),
          bottomNavigationBar: BottomAppBar(
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  child: Text('영어 단어'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Page()),
                    );
                  },
                ),
                ElevatedButton(onPressed: () {}, child: Text('즐겨 찾기'))
              ],
            ),
          ),
        )
    );
  }
}


