import 'dart:ui';
import 'package:flutter/material.dart';

class LBackDropFilterExample extends StatelessWidget {
  const LBackDropFilterExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('LBackDrop Filter')),
      body: const Center(
        child: LBackDropFilter(),
      ),
    );
  }
}

class LBackDropFilter extends StatefulWidget {
  const LBackDropFilter({super.key});
  @override
  _LBackDropFilterState createState() => _LBackDropFilterState();
}

class _LBackDropFilterState extends State<LBackDropFilter> {
  var sX = 5.0;
  var sY = 5.0;
  var textVar = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded(
          child: Stack(
            children: <Widget>[
              ConstrainedBox(
                child: FlutterLogo(),
                constraints: BoxConstraints.expand(),
              ),
              Container(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: sX, sigmaY: sY),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100.withOpacity(0.2),
                    ),
                    child: Center(child: Text(textVar)),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Wrap(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  child: Text("x:1, y:1"),
                  onPressed: () {
                    setState(() {
                      sX = 1;
                      sY = 1;
                      textVar = "x:1, y:1";
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  child: Text("x:1, y:5"),
                  onPressed: () {
                    setState(() {
                      sX = 1;
                      sY = 5;
                      textVar = "x:1, y:5";
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  child: Text("x:5, y:1"),
                  onPressed: () {
                    setState(() {
                      sX = 5;
                      sY = 1;
                      textVar = "x:5, y:1";
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  child: Text("x:5, y:5"),
                  onPressed: () {
                    setState(() {
                      sX = 5;
                      sY = 5;
                      textVar = "x:5, y:5";
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  child: Text("x:5, y:10"),
                  onPressed: () {
                    setState(() {
                      sX = 5;
                      sY = 10;
                      textVar = "x:5, y:10";
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  child: Text("x:10, y:5"),
                  onPressed: () {
                    setState(() {
                      sX = 10;
                      sY = 5;
                      textVar = "x:10, y:5";
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  child: Text("x:10, y:10"),
                  onPressed: () {
                    setState(() {
                      sX = 10;
                      sY = 10;
                      textVar = "x:5, y:10";
                    });
                  },
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}