import 'package:flutter/material.dart';

class DayWork extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        iconTheme: IconThemeData(color: Colors.grey),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text("요일별 추가 운동"),
          ),
          Card(
            child: ListTile(
              onTap: () {},
              title: Text("월요일"),
              subtitle: Text("운동을 추가해주세요",style:TextStyle(color: Colors.redAccent)),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () {},
              title: Text("화요일"),
              subtitle: Text("운동을 추가해주세요",style:TextStyle(color: Colors.redAccent)),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () {},
              title: Text("수요일"),
              subtitle: Text("운동을 추가해주세요",style:TextStyle(color: Colors.redAccent)),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () {},
              title: Text("목요일"),
              subtitle: Text("운동을 추가해주세요",style:TextStyle(color: Colors.redAccent)),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () {},
              title: Text("금요일"),
              subtitle: Text("운동을 추가해주세요",style:TextStyle(color: Colors.redAccent)),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () {},
              title: Text("토요일"),
              subtitle: Text("운동을 추가해주세요",style:TextStyle(color: Colors.redAccent)),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () {},
              title: Text("일요일"),
              subtitle: Text("운동을 추가해주세요",style:TextStyle(color: Colors.redAccent)),
            ),
          ),
        ],
      ),
    );
  }
}
