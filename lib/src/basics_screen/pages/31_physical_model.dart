import 'package:flutter/material.dart';


class PhysicalmodelExample extends StatelessWidget {
  const PhysicalmodelExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Physical Model')),
      body: const Center(
        child: Physicalmodel(),
      ),
    );
  }
}

class Physicalmodel extends StatelessWidget {
  const Physicalmodel({super.key});

  @override
  Widget build(BuildContext context) {
    return PhysicalModel(
      elevation: 6.0,
      shape: BoxShape.rectangle,
      shadowColor: Colors.black,
      color: Colors.white,
      child: Center(
        child: Container(
          height: 120.0,
          width: 120.0,
          color: Colors.blue[50],
          child: FlutterLogo(
            size: 60,
          ),
        ),
      ),
    );
  }
}
