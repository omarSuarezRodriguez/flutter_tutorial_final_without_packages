
import 'package:flutter/material.dart';

class SliverAppBarExampleTwo extends StatelessWidget {
  const SliverAppBarExampleTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sliver AppBar')),
      body: const Center(
        child: LSliverAppBar(),
      ),
    );
  }
}


class LSliverAppBar extends StatelessWidget {
  const LSliverAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            backgroundColor: Colors.blue,
            pinned: true,
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Demo Appbar'),
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 50.0,
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.lightBlue[100 * (index % 9)],
                  child: Text('List Item $index'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

