import 'package:custom_nav_bar/controller/custom_tab_controller.dart';

import '../common/body_custom_UI.dart';
import 'package:provider/provider.dart';

import '../common/stack_btn.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => CustomTabController(Icons.warning_rounded, 0),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
        ),
        home: MyHomePage(),
        debugShowCheckedModeBanner: false,
      ),
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
  return Consumer<CustomTabController>(
      builder: (BuildContext buildContext, controller, widget) {
    return Column(
      children: [
        useBodyCustomUI(buildContext, controller),
        Expanded(child: Icon(controller.icon)),
      ],
    );
  });
}

Widget useBodyCustomUI(BuildContext context, CustomTabController controller) {
  List<Widget> children = [
    StackBtn(
      context: context,
      text: 'ABOUT US',
      textColor: Colors.white,
      indicatorColor: getIndicatiorColor(0, controller.index),
      containerColor: Colors.black,
      onTab: () {
        controller.index = 0;
        controller.icon = Icons.warning_rounded;
      },
    ),
    divider,
    StackBtn(
      context: context,
      text: 'PRODUCTS',
      textColor: Colors.white,
      indicatorColor: getIndicatiorColor(1, controller.index),
      containerColor: Colors.black,
      onTab: () {
        controller.index = 1;
        controller.icon = Icons.access_alarm;
      },
    ),
    divider,
    StackBtn(
      context: context,
      text: 'NEWS',
      textColor: Colors.white,
      indicatorColor: getIndicatiorColor(2, controller.index),
      containerColor: Colors.black,
      onTab: () {
        controller.index = 2;
        controller.icon = Icons.home;
      },
    ),
    divider,
    StackBtn(
      context: context,
      text: 'CONTACT',
      textColor: Colors.white,
      indicatorColor: getIndicatiorColor(3, controller.index),
      containerColor: Colors.black,
      onTab: () {
        controller.index = 3;
        controller.icon = Icons.contact_page_rounded;
      },
    ),
  ];

  return BodyCustomUI(
    children: children,
    listDirection: ListDirection.ROW,
    margin: EdgeInsets.all(5),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.black,
    ),
  );
}

Color getIndicatiorColor(int lstIndex, int crlIndex) {
  return lstIndex == crlIndex ? Colors.blue : Colors.grey;
}
