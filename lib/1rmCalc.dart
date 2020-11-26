import 'dart:ui';

import 'package:flutter/material.dart';

class RmCalc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.grey),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: Text("1RM 계산기",
                  textScaleFactor: 1.2,
                  style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text("대략적인 1rm 을 계산할 수 있습니다."),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("무게"),
              ],
            ),
            TextField(keyboardType: TextInputType.number,fvbnm
              style: new TextStyle(
                  fontSize: 12.0,
                  color: const Color(0xFF000000),
                  fontWeight: FontWeight.w200,
                  fontFamily: "Roboto"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("횟수"),
              ],
            ),
            TextField(keyboardType: TextInputType.number,
              style: new TextStyle(
                  fontSize: 12.0,
                  color: const Color(0xFF000000),
                  fontWeight: FontWeight.w200,
                  fontFamily: "Roboto"),
            ),
            Padding(
              padding: const EdgeInsets.all(60.0),
              child: Text(
                "0Kg",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
