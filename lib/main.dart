import '../common/custom_style.dart';
import '../controller/custom_tab_controller.dart';

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
      isSelected: 0 == controller.index,
      onTab: () {
        controller.index = 0;
        controller.icon = Icons.warning_rounded;
      },
      style: CustomStyle(
        textColor: Colors.white,
        indicatorColor: Colors.grey,
        selectedIndicatorColor: Colors.blue,
        backgroundColor: Colors.black,
      ),
    ),
    StackBtn(
      context: context,
      text: 'PRODUCTS',
      isSelected: 1 == controller.index,
      onTab: () {
        controller.index = 1;
        controller.icon = Icons.access_alarm;
      },
      style: CustomStyle(
        textColor: Colors.white,
        indicatorColor: Colors.grey,
        selectedIndicatorColor: Colors.blue,
        backgroundColor: Colors.black,
      ),
    ),
    StackBtn(
      context: context,
      text: 'NEWS',
      isSelected: 2 == controller.index,
      onTab: () {
        controller.index = 2;
        controller.icon = Icons.home;
      },
      style: CustomStyle(
        textColor: Colors.white,
        indicatorColor: Colors.grey,
        selectedIndicatorColor: Colors.blue,
        backgroundColor: Colors.black,
      ),
    ),
    StackBtn(
      context: context,
      text: 'CONTACT',
      isSelected: 3 == controller.index,
      onTab: () {
        controller.index = 3;
        controller.icon = Icons.contact_page_rounded;
      },
      style: CustomStyle(
        textColor: Colors.white,
        indicatorColor: Colors.grey,
        selectedIndicatorColor: Colors.blue,
        backgroundColor: Colors.black,
      ),
    ),
  ];

  return BodyCustomUI(
      children: children,
      listDirection: ListDirection.ROW,
      isWithDivider: true,
      style: CustomStyle(
        borderRadius: BorderRadius.circular(10),
        margin: EdgeInsets.all(5),
      ));
}
