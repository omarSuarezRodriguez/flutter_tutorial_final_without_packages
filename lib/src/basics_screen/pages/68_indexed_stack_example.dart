import 'package:flutter/material.dart';

class IndexedStackExample extends StatelessWidget {
  const IndexedStackExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Indexed Stack')),
      body: CustomNavigationBarDemo(),
    );
  }
}

class CustomNavigationBarDemo extends StatefulWidget {
  const CustomNavigationBarDemo({super.key});

  @override
  _CustomNavigationBarDemoState createState() =>
      _CustomNavigationBarDemoState();
}

class _CustomNavigationBarDemoState extends State<CustomNavigationBarDemo> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        child: Column(
          children: <Widget>[_stackedContainers(), _navigationButtons()],
        ),
        padding: EdgeInsets.all(5.0),
      ),
    );
  }

  Widget _stackedContainers() {
    return Expanded(
      child: IndexedStack(
        index: index,
        children: <Widget>[
          Container(
              child: Center(
            child: Image.network(
                'https://miro.medium.com/max/3200/1*mMJ3IvaAuMAmqjtyistCog.png'),
          )),
          Container(
            child: Center(
              child: FlutterLogo(
                style: FlutterLogoStyle.markOnly,
                size: 250,
              ),
            ),
          ),
          Container(
            child: Center(
              child: FlutterLogo(
                style: FlutterLogoStyle.stacked,
                size: 250,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _navigationButtons() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          ElevatedButton.icon(
            label: Text('Flutter'),
            icon: Icon(Icons.download, size: 24),
            // child: Text(
            //   'Flutter',
            //   style: TextStyle(fontSize: 16.0, color: Colors.white),
            // ),
            onPressed: () {
              setState(() {
                index = 0;
              });
            },
          ),
          ElevatedButton(
            // color:Colors.pink[300],
            child: Text(
              'Aeologic',
              style: TextStyle(fontSize: 16.0, color: Colors.white),
            ),
            onPressed: () {
              setState(() {
                index = 1;
              });
            },
          ),
          ElevatedButton(
            // color:Colors.pink[300],
            child: Text(
              'Flutter Devs',
              style: TextStyle(fontSize: 16.0, color: Colors.white),
            ),
            onPressed: () {
              setState(() {
                index = 2;
              });
            },
          ),
          FloatingActionButton.extended(
            label: Text('Download'), // <-- Text
            backgroundColor: Colors.black,
            icon: Icon(
              // <-- Icon
              Icons.download,
              size: 24.0,
            ),
            onPressed: () {},
          ),
          FloatingActionButton.extended(
            label: Text('Download'), // <-- Text
            backgroundColor: Colors.black,
            icon: Icon(
              // <-- Icon
              Icons.download,
              size: 24.0,
            ),
            onPressed: () {},
          ),
          FloatingActionButton.extended(
            label: Text('Download'), // <-- Text
            backgroundColor: Colors.black,
            icon: Icon(
              // <-- Icon
              Icons.download,
              size: 24.0,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
