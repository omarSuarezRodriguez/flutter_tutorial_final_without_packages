import 'package:flutter/material.dart';


class ToggleButtonsWidget extends StatefulWidget {
  const ToggleButtonsWidget({super.key});
  
  @override
  State<ToggleButtonsWidget> createState() => _ToggleButtonsWidgetState();
}



class _ToggleButtonsWidgetState extends State<ToggleButtonsWidget> {

  final List<bool> _selections = List.generate(3, (_) => false);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Toggle Buttons'),
      ),
      body: ListView(children: <Widget>[
        Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(20),
            child: ToggleButtons(
              // ignore: sort_child_properties_last
              children: const <Widget>[
                Icon(Icons.add_comment),
                Icon(Icons.airline_seat_individual_suite),
                Icon(Icons.add_location),
              ],
              isSelected: _selections,
              onPressed: (int index) {
                setState(() {
                  _selections[index] = !_selections[index];
                });
              },
            ))
      ]),
    );
  }

}
