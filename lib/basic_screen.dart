import 'package:flutter/material.dart';
import 'package:flutter_practice/immutable_widget.dart';
import 'package:flutter_practice/text_layout.dart';

class BasicScreen extends StatelessWidget {
  const BasicScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        key: const Key("key"),
        backgroundColor: Colors.indigo,
        title: const Text("Welcome to Flutter"),
        actions: const <Widget>[
          Padding(padding: EdgeInsets.all(10.0), child: Icon(Icons.edit))
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AspectRatio(aspectRatio: 1.0, child: ImmutableWidget()),
          TextLayout()
        ],
      ),
      drawer: Drawer(
        child: Container(
            color: Colors.lightBlue,
            child: const Center(child: Text("I'm a drawer"))),
      ),
    );
  }
}
