import 'package:flutter/material.dart';


class CircleAvatarPage extends StatelessWidget {
  const CircleAvatarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Text')),
      body: const Center(
        child: CircleAvatarExample(),
      ),
    );
  }
}




class CircleAvatarExample extends StatelessWidget {
  const CircleAvatarExample({super.key});

  @override
  Widget build(BuildContext context) {
    String userAvatarUrl =
        'https://images.unsplash.com/photo-1565898835704-3d6be4a2c98c?fit=crop&w=200&q=60';

    return Center(
        child: CircleAvatar(
      backgroundImage: NetworkImage(userAvatarUrl),
    ));
  }
}