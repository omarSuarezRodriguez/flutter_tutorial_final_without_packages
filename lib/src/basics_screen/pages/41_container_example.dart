
import 'package:flutter/material.dart';

class ContainerExampleTwo extends StatelessWidget {
  const ContainerExampleTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Container Example Two')),
      body: const Center(
        child: LContainerWidget(),
      ),
    );
  }
}


class LContainerWidget extends StatelessWidget {
  const LContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(5.0),
              color: Theme.of(context).primaryColor,
              child: const Center(
                  child: Text(
                'I am container',
                style: TextStyle(fontSize: 16, color: Colors.white),
              )),
              width: MediaQuery.of(context).size.width,
              height: 96.0,
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              color: Theme.of(context).primaryColor,
              alignment: Alignment.center,
              child: Text('Hai, I am  Slanting',
                  style: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(color: Colors.white)),
              transform: Matrix4.skewY(0.2),
            ),
            const SizedBox(
              height: 48,
            ),
            Container(
              constraints: BoxConstraints.expand(
                height: Theme.of(context).textTheme.headline4!.fontSize! * 1.0 +
                    50.0,
              ),
              padding: const EdgeInsets.all(8.0),
              color: Theme.of(context).primaryColor,
              alignment: Alignment.center,
              child: const Text(
                'I am also Slanting,but see my edges',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              transform: Matrix4.rotationZ(0.2),
            ),
            const SizedBox(
              height: 64,
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.blue,
              child: Center(
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.yellow,
                  child: Center(
                    child: Container(
                      height: 50,
                      width: 50,
                      color: Colors.green,
                      child: Center(
                        child: Container(
                          height: 25,
                          width: 25,
                          color: Colors.red,
                          child: Center(
                            child: Container(
                              height: 15,
                              width: 15,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

