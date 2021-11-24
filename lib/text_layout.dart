import 'package:flutter/material.dart';

class TextLayout extends StatelessWidget {
  TextLayout({Key? key}) : super(key: key) {}

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text('Hello, World', style: TextStyle(fontSize: 16)),
        Text('Text can wrap without issue',
            style: Theme.of(context).textTheme.headline6),
        const Text(
            'Hello, World Hello, World Hello, World Hello, World Hello, World Hello, World Hello, World Hello, World Hello, World '),
      ],
    );
  }
}
