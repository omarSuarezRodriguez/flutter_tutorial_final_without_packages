import 'package:flutter/material.dart';


class ListTileWidget extends StatelessWidget {
  const ListTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Text')),
      body: const Center(
        child: ListTileExample(),
      ),
    );
  }
}



class ListTileExample extends StatelessWidget {
  const ListTileExample({super.key});

  @override
  Widget build(BuildContext context) {
    const listTiles = <Widget>[
      ListTile(
        title: Text('Tile 0: basic'),
      ),
      Divider(),
      ListTile(
        leading: Icon(Icons.face),
        title: Text('Tile 1: with leading/trailing widgets'),
        trailing: Icon(Icons.tag_faces),
      ),
      Divider(),
      ListTile(
        title: Text('Tile 2 title'),
        subtitle: Text('subtitle of tile 2'),
      ),
      Divider(),
      ListTile(
        title: Text('Tile 3: 3 lines'),
        isThreeLine: true,
        subtitle: Text('subtitle of tile 3'),
      ),
      Divider(),
      ListTile(
        title: Text('Tile 4: dense'),
        dense: true,
      ),
    ];
    return ListView(children: listTiles);
  }
}
