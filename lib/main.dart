import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import './First.dart';

void main() {
  runApp(const GetCupertinoApp(
    home: MyApp(),
    theme: CupertinoThemeData(
      textTheme: CupertinoTextThemeData(
        textStyle: TextStyle(
          fontFamily: 'Pretendard', // 사용하려는 폰트 패밀리
        ),
      ),
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'My App',
      theme: CupertinoThemeData(
        textTheme: CupertinoTextThemeData(
          textStyle: TextStyle(
            fontFamily: 'Pretendard', // 사용하려는 폰트 패밀리
          ),
        ),
      ),
      home: First(),
    );
  }
}