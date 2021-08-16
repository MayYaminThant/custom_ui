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
        primarySwatch: Colors.blueGrey,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
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

AppBar get appBar => AppBar();

Widget body(BuildContext context) {
  return Center(
    child: Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.black,
      ),
      child: Row(
        children: [
          stackBtn(
            context,
            'ABOUT US',
            Colors.white,
            Colors.red,
            Colors.black,
          ),
          divider,
          stackBtn(
            context,
            'PRODUCTS',
            Colors.white,
            Colors.grey,
            Colors.black,
          ),
          divider,
          stackBtn(
            context,
            'NEWS',
            Colors.white,
            Colors.grey,
            Colors.black,
          ),
          divider,
          stackBtn(
            context,
            'CONTACT',
            Colors.white,
            Colors.grey,
            Colors.black,
          ),
        ],
      ),
    ),
  );
}
