import 'package:flutter/material.dart';

class ConditionalIfExpressionExample extends StatelessWidget {
  const ConditionalIfExpressionExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Conditional If Expression'),
      ),
      body: HomePage(),
    );
  }
}


class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Tú has presionado el botón este número de veces:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              _counter == 0 ? 'Aun no has presionado el botón' : 'Ya has presionado el botón',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _counter++;
          });
        },
        tooltip: 'Incrementar',
        child: Icon(Icons.add),
      ),
    );
  }
}