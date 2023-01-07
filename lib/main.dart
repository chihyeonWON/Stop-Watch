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
    );
  }
}

// 시작 또는 일시정지 버튼 클릭
void _clickButton() {

}