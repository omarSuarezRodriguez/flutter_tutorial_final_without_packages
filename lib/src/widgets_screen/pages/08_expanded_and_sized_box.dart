import 'package:flutter/material.dart';


class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Expanded & SizedBox')),
      body: const Center(
        child: ExpandedExample(),
      ),
    );
  }
}


class ExpandedExample extends StatelessWidget {
  const ExpandedExample({super.key});


  @override
  Widget build(BuildContext context) {
    // Expanded() objects takes all available space, and each Expanded gets the
    // portion of space according to it's flex.
    // SizedBox() instead has fixed height/width.
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Container(
            child: Text('Item1: flex=1'),
            color: Colors.red,
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        Expanded(
          flex: 2,
          child: Container(
            child: Text('Item2: flex=2'),
            color: Colors.green,
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        Expanded(
          flex: 3,
          child: Container(
            child: Text('Item3, flex=3'),
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}
