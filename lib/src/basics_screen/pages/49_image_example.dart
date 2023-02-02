import 'package:flutter/material.dart';

class ImageExample extends StatelessWidget {
  const ImageExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Image Example')),
      body: const Center(
        child: LImage(),
      ),
    );
  }
}
class LImage extends StatelessWidget {
  const LImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text("Image from Asset"),
            // Image.asset("image/logo.png"),
            FlutterLogo(),
            Text("Image from Network"),
            Image.network(
                "https://miro.medium.com/max/3200/1*mMJ3IvaAuMAmqjtyistCog.png"),
          ],
        ),
      ),
    );
  }
}

