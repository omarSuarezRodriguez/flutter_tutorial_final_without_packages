import 'package:flutter/material.dart';


class BasicAppBarWidget extends StatelessWidget {
  const BasicAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Basic AppBar')),
      body: const Center(
        child: BasicAppbarExample(),
      ),
    );
  }
}



class BasicAppbarExample extends StatelessWidget {
  const BasicAppbarExample({super.key});

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        leading: Icon(Icons.tag_faces),
        title: Text("Sample title"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.directions_bike),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.directions_bus),
            onPressed: () {},
          ),
          PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(child: Text('Boat')),
                PopupMenuItem(child: Text('Train'))
              ];
            },
          )
        ],
      ),
      body: Center(child: Text("Hello")),
    );
  }
}
