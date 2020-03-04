import 'package:demo/HomeVC.dart';
import 'package:demo/RateVC.dart';
import 'package:demo/TradeCoinVC.dart';
import 'package:demo/TradeFXVC.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:websocket_manager/websocket_manager.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final tabController = new DefaultTabController(
        length: 4,
        child: new Scaffold(
          appBar: new AppBar(
            title: new Text("ChienLa"),
            bottom: new TabBar(indicatorColor: Colors.red,indicatorWeight: 2.0, tabs: [
              new Tab(icon: new Icon(Icons.home),text: "Home",),
              new Tab(icon: new Icon(Icons.attach_money),text: "TradeFx",),
              new Tab(icon: new Icon(Icons.lens),text: "TradCoin",),
              new Tab(icon: new Icon(Icons.insert_emoticon),text: "Rate",),
            ]),
          ),
          body: new TabBarView(children: [
            new HomeVC(),
            new TradeFXVC(),
            new TradeCoinScreen(),
            new RateScreen()
          ]),
        ));

    return new MaterialApp(
      title: "Tab example",
      home: tabController,
    );
  }
}

//class MyApp extends StatefulWidget {
//  @override
//  _MyAppState createState() => _MyAppState();
//}
//
//class _MyAppState extends State<MyApp> {
//  @override
//  void initState() {
//    super.initState();
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return MaterialApp(
//      home: Scaffold(
//        appBar: AppBar(
//          title: const Text("トレード"),
//        ),
//        body: Column(
//          children: <Widget>[
//            Text('SocketManager'),
//          ],
//        ),
//      ),
//    );
//  }
//}

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
