import 'dart:math';
import 'package:flutter/material.dart';



class GridViewExampleTwo extends StatelessWidget {
  const GridViewExampleTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Grid View')),
      body: const Center(
        child: LGrid(),
      ),
    );
  }
}



class LGrid extends StatelessWidget {
  const LGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20.0),
            crossAxisSpacing: 10.0,
            crossAxisCount: 2,
            children: List<Widget>.generate(
              16,
              (index) {
                return GridTile(
                  child: Card(
                    color:
                        Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0)
                            .withOpacity(1.0),
                  ),
                );
              },
            )));
  }
}

