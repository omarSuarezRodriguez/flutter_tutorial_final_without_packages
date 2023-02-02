import 'package:flutter/material.dart';

class IconsExampleTwo extends StatelessWidget {
  const IconsExampleTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Icons Example Two')),
      body: const Center(
        child: LIcon(),
      ),
    );
  }
}
class LIcon extends StatelessWidget {
  const LIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Icon(
            Icons.add,
            color: Colors.green,
            size: 48,
          ),
          Icon(
            Icons.favorite,
            color: Colors.red,
            size: 48,
            semanticLabel: "Favorite",
          ),
          Icon(
            Icons.beach_access,
            color: Colors.blue,
            size: 48.0,
          ),
        ],
      ),
    );
  }
}

/* ******************************************
*********************************************
*********************************************
              *** END***
*********************************************
*********************************************
****************************************** */
