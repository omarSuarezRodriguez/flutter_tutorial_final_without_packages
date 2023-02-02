import 'package:flutter/material.dart';

class ListViewExample extends StatelessWidget {
  const ListViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ListView')),
      body: Center(child: LListViewWidget()),
    );
  }
}

class LListViewWidget extends StatelessWidget {
  
  
  final List<int> colorCodes = <int>[
    50,
    100,
    200,
    300,
    400,
    500,
    600,
    700,
    800,
    900
  ];

  LListViewWidget({super.key});

  

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(child: _listBuilder()),
        ],
      ),
    );
  }

// The ListView.builder constructor takes an IndexedWidgetBuilder, which builds the children on demand.

  Widget _listBuilder() {
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: 500,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 50,
            color: Colors.amber[colorCodes[index % 10]],
            child: Center(child: Text('Item $index')),
          );
        });
  }
}
