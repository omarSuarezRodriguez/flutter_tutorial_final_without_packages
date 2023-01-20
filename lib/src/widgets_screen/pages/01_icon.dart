import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Icon')),
      body: const Center(
        child: IconExample(),
      ),
    );
  }
}

class IconExample extends StatelessWidget {
  const IconExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Icon(
        Icons.image,
        // size: 64.0,
        // color: Theme.of(context).primaryColor,
      ),
    );
  }
  
}
