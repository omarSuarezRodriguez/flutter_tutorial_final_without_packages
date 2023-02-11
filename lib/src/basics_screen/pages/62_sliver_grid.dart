import 'dart:math';

import 'package:flutter/material.dart';

class SliverGridExample extends StatelessWidget {
  const SliverGridExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sliver AppBar')),
      body: const Center(
        child: LSliverGrid(),
      ),
    );
  }
}

class LSliverGrid extends StatelessWidget {
  const LSliverGrid({super.key});
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverGrid(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 50,
            ),
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return new Container(
                  color: Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0)
                      .withOpacity(1.0),
                  height: 100.0);
            }))
      ],
    );
  }
}
