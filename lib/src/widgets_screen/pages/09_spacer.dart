import 'package:flutter/material.dart';


class SpacerWidget extends StatelessWidget {
  const SpacerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Spacer')),
      body: const Center(
        child: SpacerExample(),
      ),
    );
  }
}





class SpacerExample extends StatefulWidget {
  const SpacerExample({super.key});

  @override
  SpacerExampleState createState() => SpacerExampleState();
}

class SpacerExampleState extends State<SpacerExample> {
  bool isSpacerEnabled = true;

  MaterialColor fabColor = Colors.red;

  String fabText = "Remove Spacer";

  IconData fabIcon = Icons.cancel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(bottom: 18.0),
              child: Text(
                  "Empty spaces between the boxes below are Spacer widgets"),
            ),
            Row(
              children: <Widget>[
                isSpacerEnabled
                    ? const Spacer(
                        flex: 2,
                      )
                    : Container(),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.green,
                ),
                isSpacerEnabled ? const Spacer() : Container(),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                ),
                isSpacerEnabled ? const Spacer() : Container(),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.orange,
                ),
                isSpacerEnabled
                    ? const Spacer(
                        flex: 2,
                      )
                    : Container(),
              ],
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: fabColor,
        onPressed: () => setState(() {
          isSpacerEnabled == true
              ? isSpacerEnabled = false
              : isSpacerEnabled = true;
          isSpacerEnabled ? fabColor = Colors.red : fabColor = Colors.green;
          isSpacerEnabled ? fabIcon = Icons.cancel : fabIcon = Icons.add_circle;
          isSpacerEnabled ? fabText = "Remove Spacer" : fabText = "Add Spacer";
        }),
        icon: Icon(
          fabIcon,
          color: Colors.white,
        ),
        label: Text(
          fabText,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
