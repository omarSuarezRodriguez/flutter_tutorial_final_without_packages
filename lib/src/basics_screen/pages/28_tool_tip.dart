import 'package:flutter/material.dart';

class TooltipWidgetExample extends StatelessWidget {
  const TooltipWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tooltip')),
      body: const Center(
        child: TooltipWidget(),
      ),
    );
  }
}

class TooltipWidget extends StatefulWidget {
  const TooltipWidget({super.key});

  @override
  TooltipWidgetState createState() => TooltipWidgetState();
}

class TooltipWidgetState extends State<TooltipWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(children: <Widget>[
        Container(),
        Container(
          margin: EdgeInsets.all(40),
          child: Tooltip(
            message: 'My Account',
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.account_box,
                size: 50,
              ),
            ),
          ),
        ),
        Container(),
        Text('Long press on the Icon!'),
      ])),
    );
  }
}
