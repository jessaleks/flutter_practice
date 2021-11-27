import 'package:flutter/material.dart';
import "dart:math" as math;

import 'package:flutter_practice/text_layout.dart';

class ImmutableWidget extends StatelessWidget {
  const ImmutableWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[Image.asset('assets/713678.jpg'), TextLayout()],
    );
  }

  Widget _buildShinyCircle() {
    return Container(
      decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: RadialGradient(colors: [
            Colors.lightBlueAccent,
            Colors.blueAccent,
          ], center: Alignment(-0.3, -0.5)),
          boxShadow: [BoxShadow(blurRadius: 20)]),
    );
  }
}
