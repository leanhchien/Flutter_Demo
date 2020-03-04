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
    SocketManager socket = SocketManager();
    socket.initSocket();
    socket.subscriberOrderBook();
    socket.onMessage((dynamic message) {
      print("Message: $message");
      setState(() {
        final body = json.decode(message);
        orderBookData = OrderBook.fromJson(body);
      });

    });
    final bool already = orderBookData.channel.contains("orderbook");
    return Scaffold(
      body: Column(
        children: <Widget>[
          Text(already ? "Channel: ${orderBookData.channel}" : "Channel:" ),
          Text(already ? "Bids: ${orderBookData.bids}" : "Bids:" ),
          Text(already ? "Asks: ${orderBookData.bids}" : "Asks:" )
        ],
      ),
    );
  }
}