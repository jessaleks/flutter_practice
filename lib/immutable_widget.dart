import 'package:flutter/material.dart';

import 'package:flutter_practice/text_layout.dart';

class ImmutableWidget extends StatelessWidget {
  const ImmutableWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Image.asset('assets/713678.jpg'),
        Center(child: TextLayout())
      ],
    );
  }
}
