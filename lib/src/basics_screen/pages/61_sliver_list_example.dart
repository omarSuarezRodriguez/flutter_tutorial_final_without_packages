import 'dart:math';

import 'package:flutter/material.dart';

class SliverListExample extends StatelessWidget {
  const SliverListExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sliver AppBar')),
      body: const Center(
        child: LSliverList(),
      ),
    );
  }
}

class LSliverList extends StatelessWidget {
  const LSliverList({super.key});
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                  color: Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0)
                      .withOpacity(1.0),
                  height: 100.0);
            },
          ),
        ),
      ],
    );
  }
}
