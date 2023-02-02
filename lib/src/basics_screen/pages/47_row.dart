import 'package:flutter/material.dart';

class RowExample extends StatelessWidget {
  const RowExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Row')),
      body: const Center(
        child: LRow(),
      ),
    );
  }
}

class LRow extends StatefulWidget {
  const LRow({super.key});

  @override
  _LRowState createState() => _LRowState();
}

enum SingingCharacter { spaceEvenly, start, center }

class _LRowState extends State<LRow> {
  SingingCharacter? _character = SingingCharacter.spaceEvenly;
  MainAxisAlignment _mainAxisAlignment = MainAxisAlignment.spaceEvenly;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: _mainAxisAlignment,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    color: Colors.green[50],
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Item1",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.yellow[50],
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Item2",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.red[50],
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Item3",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          child: Align(
            alignment: FractionalOffset.bottomCenter,
            child: Row(
              children: <Widget>[
                Radio(
                  value: SingingCharacter.spaceEvenly,
                  groupValue: _character,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      _character = value;
                      _mainAxisAlignment = MainAxisAlignment.spaceEvenly;
                    });
                  },
                ),
                Text("Evently"),
                Radio(
                  value: SingingCharacter.start,
                  groupValue: _character,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      _character = value;
                      _mainAxisAlignment = MainAxisAlignment.start;
                    });
                  },
                ),
                Text("Start"),
                Radio(
                  value: SingingCharacter.center,
                  groupValue: _character,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      _character = value;
                      _mainAxisAlignment = MainAxisAlignment.center;
                    });
                  },
                ),
                Text("Center"),
              ],
            ),
          ),
        )
      ],
    );
  }
}

/* ******************************************
*********************************************
*********************************************
              *** END***
*********************************************
*********************************************
****************************************** */
