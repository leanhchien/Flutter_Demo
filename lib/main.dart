import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() {
  runApp(MaterialApp(
    title: "Flutter Tutorial",
    home: TutorialHome(),
  ));
}
class TutorialHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu),tooltip: "Navigation Menu",onPressed: null,),
        title: Center(child: Text("Hello"),),
        actions: <Widget>[IconButton(icon: Icon(Icons.search),tooltip: "Search",onPressed: null,)],
      ),
      body: Center(child: Text("Hello World"),),
      floatingActionButton: FloatingActionButton(tooltip: "Add",child: Icon(Icons.add),onPressed: null,),
    );
  }
}