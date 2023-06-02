import 'package:english/Word.dart';
import 'package:english/sample.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'eng.dart';

class Voca extends StatefulWidget {
  const Voca({Key? key}) : super(key: key);

  @override
  State<Voca> createState() => _VocaState();
}

class _VocaState extends State<Voca> {

  // GET 호출
  // 응답데이터(JSON) 파싱 -> List<Word>로 변경

  // List<Word> words = sampleData.map((e) => new Word(e["word"]!, e["mean"]!)).toList();
  // List<Word> words = [
  //   Word('apple', '사과'),
  //   Word('apple', '바나나'),
  // ];



  int counter = 0;
  void addcounter () {
    setState(() {
      if (counter < test.length-1) {
        counter ++;
      }
    });
  }
  void removecounter () {
    setState(() {
      if (counter > 0) {
        counter --;
      }
    });
  }
  void shuffle () {
    setState(() {
      test.shuffle();
    });
  }

  void addfavorite () {
    Favoritewords.add(test[counter]);
  }


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
                child: Text(test[counter].englishWord, style: TextStyle(fontSize: 40)),
              ),
            ),
            Container(
              height: 50, width: 400, color: Colors.blue, margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child:
              Align(
                alignment: Alignment.center,
                child: Text(test[counter].mean, style: TextStyle(fontSize: 30),
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
                onPressed: removecounter,
                child: Text('이전'),
              ),
              ElevatedButton(
                  onPressed: shuffle,
                  child: Text('셔플')),
              ElevatedButton(
                  onPressed: addfavorite,
                  child: Text('즐겨 찾기')),
              ElevatedButton(
                  onPressed: addcounter,
                  child: Text('다음')),
            ],
          ),
        ),
      ),
    );
  }
}

