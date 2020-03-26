import 'package:demo/HomeVC.dart';
import 'package:demo/RateVC.dart';
import 'package:demo/TradeCoinVC.dart';
import 'package:demo/TradeFx/TradeFXVC.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final tabController = new DefaultTabController(
        length: 4,
        child: new Scaffold(
          bottomNavigationBar: BottomAppBar(
            child: new TabBar(indicatorColor: Colors.red,indicatorWeight: 2.0, tabs: [
              new Tab(icon: new Icon(Icons.home),text: "Home",),
              new Tab(icon: new Icon(Icons.attach_money),text: "Trade",),
              new Tab(icon: new Icon(Icons.lens),text: "Chart",),
              new Tab(icon: new Icon(Icons.insert_emoticon),text: "Rate",),
            ]),
            color: Color.fromARGB(1, 22, 27, 43),
          ),
          body: new TabBarView(children: [
            new HomeVC(),
            new TradeFXVC(),
            new TradeCoinScreen(),
            new RateScreen()
          ]),
        ));

    return new MaterialApp(
      title: "Tab example",
      home: tabController,
      theme: ThemeData(scaffoldBackgroundColor: Color(0x081623)),
    );
  }
}

//class MyApp extends StatefulWidget {
//  @override
//  _MyAppState createState() => _MyAppState();
//}
//
//class _MyAppState extends State<MyApp> {
//  @override
//  void initState() {
//    super.initState();
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return MaterialApp(
//      home: Scaffold(
//        appBar: AppBar(
//          title: const Text("トレード"),
//        ),
//        body: Column(
//          children: <Widget>[
//            Text('SocketManager'),
//          ],
//        ),
//      ),
//    );
//  }
//}

// Demo ListView
//void main() => runApp(MyApp());
//
//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: "Welcome to Flutter",
//      home: RandomWords(),
//    );
//  }
//}
//
