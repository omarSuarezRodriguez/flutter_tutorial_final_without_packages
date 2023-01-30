import 'package:flutter/material.dart';

class FittedBoxWidgetExample extends StatelessWidget {
  const FittedBoxWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Fitted Box')),
      body: const Center(
        child: FittedBoxWidget(),
      ),
    );
  }
}

class FittedBoxWidget extends StatelessWidget {
  const FittedBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          FittedBox(
            child: Row(
              children: <Widget>[
                Container(
                  child: const FlutterLogo(),
                ),
                Container(
                  child: Text(
                      "This is a widget to understand how the fittedbox works"),
                )
              ],
            ),
            alignment: Alignment.centerLeft,
          )
        ],
      ),
    );
  }
}
