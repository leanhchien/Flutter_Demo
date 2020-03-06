import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'Trade1.dart';

class TradeFXVC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final tabController = new DefaultTabController(
        length: 4,
        child: new Scaffold(
          appBar: new AppBar(
            bottom: new TabBar(indicatorColor: Colors.red,indicatorWeight: 2.0, tabs: [
              new Tab(text: "建玉サマリ",),
              new Tab(text: "建玉一覧",),
              new Tab(text: "注文一覧",),
              new Tab(text: "約定履歴",),
            ]),
            backgroundColor: Color(0xFF1A237E),
          ),
          body: new TabBarView(children: [
            new ListViewExample(),
            new ListViewExample(),
            new ListViewExample(),
            new ListViewExample()
          ]),
        ));

    return new Center(
      child: tabController,
    );
  }
}
