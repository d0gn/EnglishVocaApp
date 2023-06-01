import 'package:english/Favoritevaca.dart';
import 'package:flutter/material.dart';


class Favorite extends StatefulWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
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
                    height: 150,
                    width: 400,
                    color: Colors.red,
                    margin: EdgeInsets.all(15),
                    child: ElevatedButton(
                        child: Text('즐겨찾기 단어'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Favoritevoca()),
                          );
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
