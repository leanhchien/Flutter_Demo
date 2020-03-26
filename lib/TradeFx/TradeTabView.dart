import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TradeTabView extends StatefulWidget {

  @override
  TradeTabViewState createState() => new TradeTabViewState();
}

class TradeTabViewState extends State<TradeTabView> {
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
      color: Colors.yellowAccent,
      child: Row(
        children: <Widget>[
          ButtonTabView(name: "建玉サマリ"),
          ButtonTabView(name: "建玉一覧"),
          ButtonTabView(name: "注文一覧"),
          ButtonTabView(name: "約定履歴")
        ],
      ),
    );
  }
}

class ButtonTabView extends StatelessWidget {
  ButtonTabView({this.onPressed,
        this.name});

  final GestureTapCallback onPressed;
  final String name;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RawMaterialButton(
      onPressed: onPressed,
      child: Text(name),
      highlightColor: Colors.deepPurple,
      fillColor: Colors.green,
      focusColor: Colors.red,
      hoverColor: Colors.black12,
      splashColor: Colors.black12,
    );
  }
}
