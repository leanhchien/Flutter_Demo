import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:websocket_manager/websocket_manager.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  final TextEditingController _urlController = TextEditingController(text: "wss://api.coin.z.com/ws/public/v1");
  final TextEditingController _messageController = TextEditingController();
  WebsocketManager socket;
  String _message = '';
  String _closeMessage = '';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    const param = '{"command": "subscribe","channel": "ticker","symbol": "BTC"}';
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Websocket Manager Example"),
        ),
        body: Column(
          children: <Widget>[
            TextField(controller: _urlController,),
            Wrap(children: <Widget>[
              RaisedButton(child: Text('Config'), onPressed: () => socket = WebsocketManager(_urlController.text),),
              RaisedButton(child: Text('Connect'),onPressed: () {
                if (socket != null) {
                  print("Connect Socket");
                  socket.connect();
                }
              },),
              RaisedButton(child: Text('Close'),onPressed: () {
                if (socket != null) {
                  socket.close();
                }
              },),
              RaisedButton(child: Text("Listen Message"),onPressed: () {
                if (socket != null) {
                  socket.onMessage((dynamic message) {
                    print('New message: $message');
                    setState(() {
                      _message = message.toString();
                    });
                  });
                }
              },),
              RaisedButton(child: Text('Listen Done'),onPressed: () {
                if (socket != null) {
                  socket.onClose((dynamic message) {
                    print('Close Message $message');
                    setState(() {
                      _closeMessage = message.toString();
                    });
                  });
                }
              },),
              RaisedButton(child: Text('Echo Test'),onPressed: () => WebsocketManager.echoTest(),)
            ],),
            TextField(controller: _messageController,decoration: InputDecoration(suffix: IconButton(icon: Icon(Icons.send),onPressed: () {
              if (socket != null) {
                socket.send(param);
              }
            },)),),
            Text('Received message:'),
            Text(_message),
            Text('Close message:'),
            Text(_closeMessage),
          ],
        ),
      ),
    );
  }
}

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
//class RandomWords extends StatefulWidget {
//  @override
//  RandomWordsState createState() => new RandomWordsState();
//}
//
//class RandomWordsState extends State<RandomWords> {
//  final List<WordPair> _words = <WordPair>[];
//  final _biggerFont = const TextStyle(fontSize: 18.0);
//  final Set<WordPair> _saved = new Set<WordPair>();
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    final wordPair = WordPair.random();
//    return Scaffold(
//      appBar: AppBar(
//        title: Text("Example for Stateful"),
//        actions: <Widget>[
//          new IconButton(icon: const Icon(Icons.list), onPressed: _pushSaved)
//        ],
//      ),
//      body: Center(child: ListView.builder(itemBuilder: (context, index) {
//        if (index.isOdd) {
//          return Divider();
//        }
//        if (index >= _words.length) {
//          _words.addAll(generateWordPairs().take(10));
//        }
//        return _buildRow(_words[index]);
//      })),
//    );
//  }
//
//  Widget _buildRow(WordPair wordPair) {
//    final bool alreadySaved = _saved.contains(wordPair);
//    return ListTile(
//      title: Text(
//        wordPair.asPascalCase,
//        style: _biggerFont,
//      ),
//      trailing: new Icon(
//        alreadySaved ? Icons.favorite : Icons.favorite_border,
//        color: alreadySaved ? Colors.red : null,
//      ),
//      onTap: () {
//        setState(() {
//          if (alreadySaved) {
//            _saved.remove(wordPair);
//          } else {
//            _saved.add(wordPair);
//          }
//        });
//      },
//    );
//  }
//
//  void _pushSaved() {
//    Navigator.of(context)
//        .push(new MaterialPageRoute(builder: (BuildContext context) {
//      final Iterable<ListTile> tiles = _saved.map((WordPair pair) {
//        return new ListTile(
//          title: new Text(
//            pair.asPascalCase,
//            style: _biggerFont,
//          ),
//        );
//      });
//      final List<Widget> divied = ListTile.divideTiles(tiles: tiles,context: context).toList();
//      return new Scaffold(
//        appBar: new AppBar(
//          title: const Text("Saved List"),
//        ),
//        body: new ListView(
//          children: divied,
//        ),
//      );
//    }));
//  }
//}
