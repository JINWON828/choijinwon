import 'package:flutter/material.dart';

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
elevation: 0,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black)),
      body: ListView(
        children: [
          ListTile(
              title: Text("마이페이지"),
              subtitle: Text("카드를 눌러 내 정보들을 수정할 수 있습니다.")),
          Column(
            children: [
              Card(
                child: ListTile(title: Text("현재 프로그램"), subtitle: Text("헬선비루틴")),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(width: 180, height: 100,
                    child: Card(
                      child: ListTile(title: Text("시작일"), subtitle: Text("98일차")),
                    ),
                  ),
                  Stack(
                    children: [
                      SizedBox(width: 180, height: 100,
                        child: Card(
                          child: ListTile(title: Text("최소원판"), subtitle: Text("2.5kg")),
                        ),
                      ),
                      Positioned(right: 5,top: 5, child: Icon(Icons.edit,color: Colors.grey))
                    ],
                  ),
                ],
              ),
              Card(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [Text("스쿼트"), Text("데드리프트"), Text("벤치프레스"), Text("OHP")],
                    ),
                    Divider(color: Colors.grey, thickness: 2),
                    Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [Text("285"), Text("315"), Text("205"), Text("135")],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
