import 'package:flutter/material.dart';

class TransparentAppBarExampleExample extends StatelessWidget {
  const TransparentAppBarExampleExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transparent AppBar'),
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transparent AppBar'),
        foregroundColor: Colors.black,
        centerTitle: true,
        leading: BackButton(),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        child: Image.network(
            'https://miro.medium.com/max/3200/1*mMJ3IvaAuMAmqjtyistCog.png'),
      ),
    );
  }
}
