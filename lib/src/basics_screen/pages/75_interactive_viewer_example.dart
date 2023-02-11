import 'package:flutter/material.dart';

class InteractiveViewerExample extends StatelessWidget {
  const InteractiveViewerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Material Banner')),
      body: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
      boundaryMargin: const EdgeInsets.all(
        double.infinity
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Mapp'),
        ),
        body: Center(child: Text('Move this page!'),),
      ),
    );
  }
}
