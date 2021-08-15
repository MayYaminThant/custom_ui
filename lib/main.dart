import 'package:custom_nav_bar/common/custom_ui.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.white,
        // accentColor: Colors.cyan[600],
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: appBar,
        body: body(context),
      ),
    );
  }
}

Widget body(BuildContext context) {
  return Center(
    child: stackBtn(
      context,
      'ABOUT',
      Colors.white,
      Colors.orange,
      Colors.black,
    ),
  );
}

AppBar get appBar => AppBar();
