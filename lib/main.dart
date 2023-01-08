import 'package:flutter/material.dart';

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
              )
            ]
          )
        ]
      )
    )
  );
}

// 시작 또는 일시정지 버튼 클릭
void _clickButton() {

}