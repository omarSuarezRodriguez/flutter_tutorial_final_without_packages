import 'package:flutter/material.dart';

class AppBarExample extends StatelessWidget {
  const AppBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bottom TabBar')),
      body: const Center(
        child: LAppBarWidget(),
      ),
    );
  }
}

final GlobalKey<ScaffoldMessengerState> scaffoldKey =
    GlobalKey<ScaffoldMessengerState>();
const SnackBar snackBar = SnackBar(content: Text('Notification Clicked'));

class LAppBarWidget extends StatelessWidget {
  const LAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ScaffoldMessenger(
        key: scaffoldKey,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('AppBar Demo'),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.add_alert),
                tooltip: 'Show Snackbar',
                onPressed: () {
                  scaffoldKey.currentState!.showSnackBar(snackBar);
                },
              ),
              IconButton(
                icon: const Icon(Icons.close),
                tooltip: 'close',
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
          body: const Center(
            child: Text(
              'This is the home page',
              style: TextStyle(fontSize: 24),
            ),
          ),
        ),
      ),
    );
  }
}
