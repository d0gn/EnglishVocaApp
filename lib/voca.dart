import 'package:flutter/material.dart';

class Voca extends StatefulWidget {
  const Voca({Key? key}) : super(key: key);

  @override
  State<Voca> createState() => _VocaState();
}

class _VocaState extends State<Voca> {
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
                child: Text('Apple', style: TextStyle(fontSize: 40)),
              ),
            ),
            Container(
              height: 50, width: 400, color: Colors.blue, margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child:
              Align(
                alignment: Alignment.center,
                child: Text('사과', style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            Container(
              height: 50, width: 400, color: Colors.red, margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Align(
                alignment: Alignment.center,
                child: Text('this is apple', style: TextStyle(fontSize: 20),),
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
