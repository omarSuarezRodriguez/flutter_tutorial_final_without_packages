import 'package:flutter/material.dart';

class ListWheelScrollViewExample extends StatelessWidget {
  const ListWheelScrollViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    // imageCache.clear();
    return Scaffold(
      appBar: AppBar(title: const Text('List Wheel Scroll View')),
      body: Center(
        child: ListWheelScrollView(
          itemExtent: 120.0,
          children: [
            
            FlutterLogo(
              style: FlutterLogoStyle.horizontal,
              size: 350.0,
            ),
            FlutterLogo(
              style: FlutterLogoStyle.horizontal,
              size: 350.0,
            ),
            FlutterLogo(
              style: FlutterLogoStyle.horizontal,
              size: 350.0,
            ),
            FlutterLogo(
              style: FlutterLogoStyle.horizontal,
              size: 350.0,
            ),
            FlutterLogo(
              style: FlutterLogoStyle.horizontal,
              size: 350.0,
            ),
            FlutterLogo(
              style: FlutterLogoStyle.horizontal,
              size: 350.0,
            ),
            FlutterLogo(
              style: FlutterLogoStyle.horizontal,
              size: 350.0,
            ),
            FlutterLogo(
              style: FlutterLogoStyle.horizontal,
              size: 350.0,
            ),
            FlutterLogo(
              style: FlutterLogoStyle.horizontal,
              size: 350.0,
            ),
            FlutterLogo(
              style: FlutterLogoStyle.horizontal,
              size: 350.0,
            ),
            FlutterLogo(
              style: FlutterLogoStyle.horizontal,
              size: 350.0,
            ),
            FlutterLogo(
              style: FlutterLogoStyle.horizontal,
              size: 350.0,
            ),
            

          ],
          diameterRatio: 1,
        ),
      ),
    );
  }
}
