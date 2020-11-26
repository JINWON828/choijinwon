import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_movie_app/DayWork.dart';
import 'package:flutter_movie_app/HellPage.dart';

import '1rmCalc.dart';
import 'MyPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Flutterdemo", home: GoLIp());
  }
}

class GoLIp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.grey),
          backgroundColor: Colors.white),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
            ),
            ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyPage()));
                },
                title: Text(
                  "마이페이지",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                )),
            ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HellPage()));
                },
                title: Text(
                  "운동일지",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                )),
            ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DayWork()));
                },
                title: Text(
                  "추가 운동 설정",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                )),
            ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RmCalc()));
                },
                title: Text(
                  "1rm 계산해보기",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                )),
            ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RmCalc()));
                },
                title: Text(
                  "QnA",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                )),
            ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HellPage()));
                },
                title: Text(
                  "후원계좌",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                )),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Text(
              "고독한 리프터",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Card(
                child: ListTile(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HellPage()));
                  },
                  trailing: Stack(
                    alignment: Alignment.center,
                    children: [
                      Icon(
                        Icons.circle,
                        size: 50,
                        color: Colors.red,
                      ),
                      Icon(
                        Icons.circle,
                        size: 40,
                        color: Colors.white,
                      ),
                      Text(
                        "94일",
                        textScaleFactor: 0.8,
                      )
                    ],
                  ),
                  title: Text("헬선비루틴"),
                  subtitle: Text(
                    "눌러서 자세히보기",
                    style: TextStyle(fontSize: 10),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.arrow_back),
                Text(
                  "94일차",
                ),
                Icon(Icons.arrow_forward)
              ],
            ),
            Card(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [Text("운동"), Text("횟수"), Text("세트"), Text("무게")],
                  ),
                  Divider(color: Colors.grey, thickness: 2),
                  Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('오늘은 운동이 없습니다.'),
                        Text('다른 부위나 보조운동을 해보세요.')
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 50,
              height: 50,
            ),
            Card(
              margin: EdgeInsets.all(10.0),
              color: Colors.redAccent,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "사용자 감사 이벤트!",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.white),
                    ),
                    Text("15,000 돌파!",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.white)),
                    Text(
                      "파워리프팅 용품 할인",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                  ]),
            ),
            Card(
                margin: EdgeInsets.all(5.0),
                color: Colors.white,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          "눌러서 오늘의 운동일지 입력",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.grey),
                        ),
                      ),
                    ])),
            Card(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text("시계들어갈 자리",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("시작"),
                        Text("초기화"),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(padding: const EdgeInsets.all(30.0))
          ],
        ),
      ),
    );
  }
}
