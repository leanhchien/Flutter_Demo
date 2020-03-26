import 'package:flutter/material.dart';
import 'package:demo/Model.dart';

class RateScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RateVC();
  }
}

class RateVC extends State<RateScreen> {
  Rate rateData;
  @override
  Widget build(BuildContext context) {
//    SocketManager socket = SocketManager();
//    socket.initSocket();
//    //socket.subscriberTicker();
//    socket.onMessage((dynamic message) {
//      print("Message: $message");
//      setState(() {
//        final body = json.decode(message);
//        rateData = Rate.fromJson(body);
//      });
//
//    });
    final bool already = rateData.channel.contains("ticker");
    return Scaffold(
      body: Column(
        children: <Widget>[
          Text(already ? "Channel: ${rateData.channel}" : "Channel:" ),
          Text(already ? "Ask: ${rateData.ask}" : "Ask:" ),
          Text(already ? "Bid: ${rateData.bid}" : "Bid:" ),
          Text(already ? "High: ${rateData.high}" : "High:" ),
          Text(already ? "Last: ${rateData.last}" : "Last:" ),
          Text(already ? "Low: ${rateData.low}" : "Low:" ),
          Text(already ? "Symbol: ${rateData.symbol}" : "Symbol:" ),
          Text(already ? "Timestamp: ${rateData.timestamp}" : "Timestamp:" ),
          Text(already ? "Volume: ${rateData.volume}" : "Volume:" ),
        ],
      ),
    );
  }
}