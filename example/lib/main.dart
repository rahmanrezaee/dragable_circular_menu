import 'package:dragable_circular_menu/dragable_circular_menu.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? selectedItem;
  @override
  Widget build(BuildContext context) {
    return DragableCircularMenu(
      items: [
        CircularMenuItem(
            iconColor: Colors.black,
            icon: Icons.home,
            onTap: () {
              setState(() {
                selectedItem = "home";
              });
            }),
        CircularMenuItem(
            iconColor: Colors.black,
            icon: Icons.add,
            onTap: () {
              setState(() {
                selectedItem = "add";
              });
            }),
        CircularMenuItem(
            iconColor: Colors.black,
            icon: Icons.notifications,
            onTap: () {
              setState(() {
                selectedItem = "notifications";
              });
            }),
        CircularMenuItem(
            iconColor: Colors.black,
            icon: Icons.group,
            onTap: () {
              setState(() {
                selectedItem = "group";
              });
            }),
        CircularMenuItem(
            iconColor: Colors.black,
            icon: Icons.chat,
            onTap: () {
              setState(() {
                selectedItem = "chat";
              });
            }),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
            child: Text(
          'Selected Item :$selectedItem',
        )),
      ),
    );
  }
}
