import 'package:flutter/material.dart';
import 'parent_page.dart';

class MainCommunicationWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.dark(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Communication Widgets"),
        ),
        body: ParentPage(),
      ),
    );
  }
}
