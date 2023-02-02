import 'package:flutter/material.dart';

class ColumnsExample extends StatelessWidget {
  const ColumnsExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Columns')),
      body: const Center(
        child: LColumn(),
      ),
    );
  }
}
class LColumn extends StatefulWidget {
  const LColumn({super.key});

  @override
  _LColumnState createState() => _LColumnState();
}

enum ALIGN { spaceEvenly, start, center }

class _LColumnState extends State<LColumn> {
  ALIGN? _character = ALIGN.spaceEvenly;
  MainAxisAlignment _mainAxisAlignment = MainAxisAlignment.spaceEvenly;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Container(
            color: Theme.of(context).colorScheme.secondary.withOpacity(0.5),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: _mainAxisAlignment,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    "This is the Column Widget - Item1",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                  Text(
                    "This is the Column Widget - Item2",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                  FlutterLogo(),
                  Text(
                    "This is the Column Widget - Item4",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),

                  //new Container()
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
                  value: ALIGN.spaceEvenly,
                  groupValue: _character,
                  onChanged: (ALIGN? value) {
                    setState(() {
                      _character = value;
                      _mainAxisAlignment = MainAxisAlignment.spaceEvenly;
                    });
                  },
                ),
                Text("Evently"),
                Radio(
                  value: ALIGN.start,
                  groupValue: _character,
                  onChanged: (ALIGN? value) {
                    setState(() {
                      _character = value;
                      _mainAxisAlignment = MainAxisAlignment.start;
                    });
                  },
                ),
                Text("Start"),
                Radio(
                  value: ALIGN.center,
                  groupValue: _character,
                  onChanged: (ALIGN? value) {
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

