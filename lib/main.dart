import 'package:flutter/material.dart';
import 'login_page.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{

  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PayUp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Nunito',
      ),
      home: LoginPage(),
      routes: routes,
    );
  }
}
