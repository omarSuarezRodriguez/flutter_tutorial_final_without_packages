import 'package:flutter/material.dart';


class TextWidget extends StatelessWidget {
  const TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Text')),
      body: const Center(
        child: TextExample(),
      ),
    );
  }
}


class TextExample extends StatelessWidget {
  const TextExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Fluttering Life.',
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.lightGreenAccent,
            fontSize: 32.0,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.underline),
      ),
    );
  }
}
