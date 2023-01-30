import 'package:flutter/material.dart';


class DraggablePageExample extends StatelessWidget {
  const DraggablePageExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Draggable')),
      body: const Center(
        child: DraggablePage(),
      ),
    );
  }
}





class DraggablePage extends StatefulWidget {
  const DraggablePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<DraggablePage>
    with TickerProviderStateMixin {
  GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Draggable(
          child: Icon(
            Icons.flight_takeoff,
            size: 90.0,
          ),
          feedback: Icon(
            Icons.flight_takeoff,
            size: 90.0,
          ),
          childWhenDragging: Icon(
            Icons.flight_land,
            size: 90.0,
          ),
        ),
      ),
    );
  }
}
