
import 'package:flutter/material.dart';

class SizedBoxExampleTwo extends StatelessWidget {
  const SizedBoxExampleTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sized Box')),
      body: const Center(
        child: LSizedBox(),
      ),
    );
  }
}

class LSizedBox extends StatelessWidget {
  const LSizedBox({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        ElevatedButton(
          onPressed: () {},
          child: Text("Simple RaisedButton"),
        ),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text("Simple RaisedButton"),
        ),
        SizedBox(
          height: 100,
          child: ElevatedButton(
            onPressed: () {},
            child: Text("Button with specific height"),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SizedBox(
          width: 100,
          child: ElevatedButton(
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Button with specific width"),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
              onPressed: () {}, child: Text("Button with infinity width")),
        )
      ],
    );
  }
}
