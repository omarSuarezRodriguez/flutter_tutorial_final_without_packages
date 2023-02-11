import 'package:flutter/material.dart';

class MaterialBannerExample extends StatelessWidget {
  const MaterialBannerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Material Banner')),
      body: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(

      child: ElevatedButton(
        child: const Text('Open'),
        onPressed: () {
          ScaffoldMessenger.of(context).showMaterialBanner(
            MaterialBanner(
              padding: const EdgeInsets.all(20),
              content: const Text('Subscribe!'),
              leading: const Icon(Icons.notifications_active_outlined),
              elevation: 5,
              backgroundColor: Colors.white12,
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                  },
                 child: const Text('Dimiss'))
              ],
            ),
          );
        },
      ),



    );
  }

 
 

}
