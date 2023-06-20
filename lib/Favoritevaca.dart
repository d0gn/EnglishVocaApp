import 'package:english/Word.dart';
import 'package:english/sample.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Favoritevoca extends StatefulWidget {
  const Favoritevoca({Key? key}) : super(key: key);

  @override
  State<Favoritevoca> createState() => _FavoritevocaState();
}


class _FavoritevocaState extends State<Favoritevoca> {

  int fcounter = 0;
  void addcounter () {
    setState(() {
      if (fcounter < Favoritewords.length-1) {
        fcounter ++;
      }
    });
  }
  void removecounter () {
    setState(() {
      if (fcounter > 0) {
        fcounter --;
      }
    });
  }
  void shuffle () {
    setState(() {
      test.shuffle();
    });
  }
  late FToast fToast;
  void removefavorite () {
    setState(() {
      Favoritewords.removeAt(fcounter);
      fcounter --;
    });
    Widget toast = Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        color: Colors.greenAccent,
      ),
      child: Text("즐겨찾기 취소 되었습니다."),
    );

    fToast.showToast(
      child: toast,
      toastDuration: Duration(seconds: 3),
    );
  }
  @override
  void initState() {
    super.initState();
    fToast = FToast();
    fToast.init(context);
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
                child: Text(Favoritewords[fcounter].englishWord, style: TextStyle(fontSize: 40)),
              ),
            ),
            Container(
              height: 50, width: 400, color: Colors.blue, margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child:
              Align(
                alignment: Alignment.center,
                child: Text(Favoritewords[fcounter].mean, style: TextStyle(fontSize: 30),
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
            Container(
              height: 50, width: 400, color: Colors.yellow, margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Align(
                alignment: Alignment.center,
                child: Text('${fcounter+1}/${Favoritewords.length}', style: TextStyle(fontSize: 20),),
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
                  onPressed: removefavorite,
                  child: Text('즐찾 해제')),
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

