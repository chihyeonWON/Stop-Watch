import 'package:flutter/material.dart';
import 'dart:async'; // Timer 클래스를 포함하는 라이브러리

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'StopWatch',
      theme:ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:StopWatchPage(),
    );
  }
}

class StopWatchPage extends StatefulWidget {

  @override
  _StopWatchPageState createState() => _StopWatchPageState();
}

class _StopWatchPageState extends State<StopWatchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('StopWatch'),
      ),
      body:_buildBody(),
      bottomNavigationBar: BottomAppBar( // 하단 AppBar 생성
        child:Container(
          height:50.0,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {
          _clickButton();
        }),
        child:Icon(Icons.play_arrow),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

//내용 부분
Widget _buildBody() {
  return Center(
    child:Padding(
      padding:const EdgeInsets.only(top:30),
      child:Stack(
        children:<Widget>[
          Column(
            children:<Widget>[
              Row( // 시간을 표시하는 영역
                mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children:<Widget>[
                  Text(
                    '0',
                    style: TextStyle(fontSize:50.0),
                  ),
                    Text('00'), // 1/100초
                ],
              ),
              Container( // 랩타임을 표시하는 영역
                width:100,
                height:200,
                child:ListView(
                  children:<Widget>[Text('랩타임 표시')],
                ),
                 )
            ],
          ),
          Positioned(
            left:10, // 왼쪽 10의 여백
            bottom:10, // 아래 10의 여백
            child:FloatingActionButton( // 왼쪽 아래에 위치한 초기화 버튼)
              backgroundColor: Colors.deepOrange,
              onPressed:(){},
              child:Icon(Icons.rotate_left),
            ),
          ),
          Positioned(
            right:10, // 오른 10의 여백
            bottom:10, // 아래 10의 여백
            child:ElevatedButton( // 오른쪽 아래에 위치한 랩타임 버튼
              onPressed:(){},
              child:Text('랩타임'),
            )
          )
        ],
      )
    )
  );
}

// 시작 또는 일시정지 버튼 클릭
void _clickButton() {

}