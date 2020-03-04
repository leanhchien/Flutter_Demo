import 'package:websocket_manager/websocket_manager.dart';
import 'package:flutter/material.dart';

class SocketManager {
  final TextEditingController _urlController = TextEditingController(text: "wss://api.coin.z.com/ws/public/v1");
  final TextEditingController _messageController = TextEditingController();
  WebsocketManager socket;
  String _message = '';
  String _closeMessage = '';
  static Function(dynamic) _messageCallback;

  void initSocket() {
    socket = WebsocketManager(_urlController.text);
    if (socket != null) {
      socket.connect();
    }
  }
  
  void onMessage(Function(dynamic) callback) {
    _messageCallback = callback;
    if (socket != null) {
      socket.onMessage((dynamic message) {
        if (_messageCallback != null) {
          _messageCallback(message);
        }
      });
    }
  }

  void subscriberOrderBook() {
    String param = '{"command": "subscribe","channel": "orderbooks","symbol": "BTC"}';
    if (socket != null) {
      socket.send(param);
    }
  }

  void subscriberTicker() {
//    String param = '{"command": "subscribe","channel": "ticker","symbol": "BTC"}';
//    if (socket != null) {
//      socket.send(param);
//    }
  }
}