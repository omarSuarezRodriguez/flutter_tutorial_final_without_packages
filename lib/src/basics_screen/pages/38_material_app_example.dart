
import 'package:flutter/material.dart';

class MaterialAppExample extends StatelessWidget {
  const MaterialAppExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Material App Example')),
      body: const Center(
        child: LMaterialWidget(),
      ),
    );
  }
}

class LMaterialWidget extends StatelessWidget {
  const LMaterialWidget({super.key});

  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: MaterialApp(
        home: Scaffold(
          backgroundColor:
              Theme.of(context).colorScheme.secondary.withOpacity(0.5),
          appBar: AppBar(
            backgroundColor: Theme.of(context).primaryColor,
            title: const Text('MaterialApp'),
          ),
          body: const Center(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'A convenience widget that wraps '
                'a number of widgets that are commonly '
                'required for applications implementing '
                'Material Design.',
                style: TextStyle(fontSize: 14, height: 1.5),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

/* ******************************************
*********************************************
*********************************************
              *** END***
*********************************************
*********************************************
****************************************** */
