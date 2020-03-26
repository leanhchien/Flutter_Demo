import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeaderView extends StatefulWidget {
  @override
  HeaderViewState createState() => new HeaderViewState();
}

class HeaderViewState extends State<HeaderView> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    double height = MediaQuery
        .of(context)
        .size
        .height;
    return Container(
      constraints: BoxConstraints.expand(),
      color: Colors.grey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(width: width, height: 100, color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(width: width,
                    height: 20,
                    color: Colors.greenAccent,
                    child: Text("USD/JPY"),),
                  Container(
                    width: width, height: 80, color: Colors.grey, child: Row(
                    children: <Widget>[
                      Container(width: width / 2,
                        height: 80,
                        color: Colors.blue,
                        child: Text("Buy"),),
                      Container(width: width / 2,
                        height: 80,
                        color: Colors.red,
                        child: Text("Sell"),),
                    ],
                  ),)
                ],
              )
          )
        ],
      ),
    );
  }
}
