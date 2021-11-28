import 'package:flutter/material.dart';
import 'labeled_container.dart';

class FlexScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Flexible and Expanded'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ..._header(context, 'Expanded'),
            _buildExpanded(context),
            ..._header(context, 'Flexible'),
            _buildFlexible(context),
            Expanded(
              child: Container(),
            ),
            _buildFooter(context)
          ],
        ),
      ),
    );
  }

  Iterable<Widget> _header(BuildContext context, String text) {
    return [
      const SizedBox(height: 20),
      Text(
        text,
        style: Theme.of(context).textTheme.headline5,
      ),
    ];
  }

  Widget _buildExpanded(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        children: const <Widget>[
          LabeledContainer(
            width: 100,
            color: Colors.green,
            text: '100',
          ),
          Expanded(
            child: LabeledContainer(
              color: Colors.purple,
              text: 'The Remainder (the expanded widget)',
              textColor: Colors.white,
            ),
          ),
          LabeledContainer(
            width: 40,
            color: Colors.green,
            text: '40',
          )
        ],
      ),
    );
  }

  Widget _buildFlexible(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const <Widget>[
          Flexible(
            flex: 1,
            fit: FlexFit.tight,
            child: LabeledContainer(
              color: Colors.orange,
              text: '25%',
            ),
          ),
          Flexible(
            flex: 1,
            fit: FlexFit.tight,
            child: LabeledContainer(
              color: Colors.deepOrange,
              text: '25%',
            ),
          ),
          Flexible(
            flex: 2,
            fit: FlexFit.tight,
            child: LabeledContainer(
              color: Colors.blue,
              text: '50%',
            ),
          )
        ],
      ),
    );
  }

  Widget _buildFooter(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 15.0,
            horizontal: 30,
          ),
          child: Text(
            'Pinned to the Bottom',
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ),
      ),
    );
  }
}
