import 'package:demo/TradeFx/TradeTabView.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'Trade1.dart';
import 'HeaderView.dart';

class TradeFXVC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
      constraints: BoxConstraints.expand(),
      color: Colors.grey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(width: width, height: 100,color: Colors.blueGrey, child: HeaderView()),
          Container(width: width, height: 30, color: Colors.blueGrey, child: Text("Trade")),
          Container(width: width, height: 50, color: Colors.white,child: TradeTabView(),),
          Container(width: width, height: 313, child: ListViewExample(),),
        ],
      ),
    );
  }

//  @override
//    final tabController = new DefaultTabController(
//        length: 4,
//        child: new Scaffold(
//          appBar: new AppBar(
//            bottom: new TabBar(indicatorColor: Colors.red,indicatorWeight: 2.0, tabs: [
//              new Tab(text: "建玉サマリ",),
//              new Tab(text: "建玉一覧",),
//              new Tab(text: "注文一覧",),
//              new Tab(text: "約定履歴",),
//            ]),
//            backgroundColor: Color(0x081623),
//          ),
//          body: new TabBarView(children: [
//            new ListViewExample(),
//            new ListViewExample(),
//            new ListViewExample(),
//            new ListViewExample()
//          ]),
//        ));
//
//    return new Center(
//      child: tabController,
//    );
//  }
}
