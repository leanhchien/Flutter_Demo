import 'package:flutter/material.dart';
import 'package:demo/SocketManager.dart';
import 'package:demo/Model.dart';
import 'dart:convert';

class TradeCoinScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TradeCoinVC();
  }
}

class TradeCoinVC extends State<TradeCoinScreen> {
  OrderBook orderBookData;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
//    SocketManager socket = SocketManager();
//    socket.initSocket();
//    socket.subscriberOrderBook();
//    socket.onMessage((dynamic message) {
//      print("Message: $message");
//      setState(() {
//        final body = json.decode(message);
//        orderBookData = OrderBook.fromJson(body);
//      });
//
//    });
    final bool already = orderBookData.channel.contains("orderbook");
    return ListView.builder(itemBuilder: (context, index) {
      return GestureDetector(
        child: Container(
          padding: EdgeInsets.all(10.0),
          color: index % 2 == 0? Colors.red : Colors.amber,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text("Price: ${orderBookData.bids[index].price}", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),),
              new Text("Size: ${orderBookData.bids[index].size}", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),)
            ],
          ),
        ),
      );
    },
      itemCount: orderBookData.bids.length,
    );
  }
}