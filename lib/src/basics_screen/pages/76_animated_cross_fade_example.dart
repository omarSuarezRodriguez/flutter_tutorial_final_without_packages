import 'package:flutter/material.dart';

class AnimatedCossFadeExample extends StatelessWidget {
  const AnimatedCossFadeExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animated CossFade')),
      body: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _bool = true;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _bool = !_bool;
              });
            },
            child: Text('click'),
          ),
          SizedBox(
            height: 20,
          ),
          AnimatedCrossFade(
            firstChild: FlutterLogo(size: 200, style: FlutterLogoStyle.horizontal,),
            secondChild: FlutterLogo(size: 200, style: FlutterLogoStyle.stacked,),
            crossFadeState:
                _bool ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            duration: const Duration(seconds: 1),
          ),
        ],
      ),
    );
  }
}
