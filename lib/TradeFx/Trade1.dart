import 'package:demo/TradeFx/DummyData.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';

class ListViewExample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ListViewExampleState();
  }
}

class ListViewExampleState extends State<ListViewExample> {

  List<Container> _buildListItem(BuildContext context) {
    double width1 = MediaQuery.of(context).size.width * 0.3;
    double width2 = MediaQuery.of(context).size.width * 0.2;
    int index = 0;
    return interestSumaryDatas.map((sumary) {
      var container = Container(
        decoration: new BoxDecoration(color: Colors.black, border: Border(bottom: BorderSide())),
        child: new Row(
          children: <Widget>[
            new Container(
              width: width1,
              margin: new EdgeInsets.all(8.0),
              child: new Text(sumary.typeMoney + "  " + sumary.typeBidAsk, style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 14.0),),
            ),
            new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Container(
                  width: width2,
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: new Text(sumary.interestQuantity, style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 14.0)),
                ),
                new Container(
                  width: width2,
                  padding: const EdgeInsets.only(top: 8.0,bottom: 8.0),
                  child: new Text(sumary.underCover, style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 14.0)),
                )
              ],
            ),
            new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Container(
                  width: width2,
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: new Text(sumary.average, style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 14.0)),
                ),
                new Container(
                  width: width2,
                  padding: const EdgeInsets.only(top: 8.0,bottom: 8.0),
                  child: new Text(sumary.evaluationRate, style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 14.0)),
                )
              ],
            ),
            new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                new Container(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: new Text(sumary.valuation, style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 14.0)),
                ),
                new Container(
                  padding: const EdgeInsets.only(top: 8.0,bottom: 8.0),
                  child: new Text(sumary.swap, style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 14.0), textAlign: TextAlign.right,),
                )
              ],
            ),
          ],
        ),
      );
      index = index + 1;
      return container;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new ListView(
      children:_buildListItem(context),
    );
  }
}