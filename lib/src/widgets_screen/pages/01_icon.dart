import 'package:flutter/material.dart';

// class IconWidget extends StatefulWidget {
//   const IconWidget({super.key});
//   static const String routeName = 'basics/animated_builder';

//   @override
//   State<IconWidget> createState() => _IconWidgetState();
// }

// class _IconWidgetState extends State<IconWidget>

//     with SingleTickerProviderStateMixin {


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Icon'),
//       ),
//       body: const Center(
//         child: IconExample(),


//       ),
//     );
//   }
// }

class IconWidget extends StatelessWidget {
  const IconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Icon')),
      body: const Center(
        child: IconExample(),
      ),
    );
  }
}

class IconExample extends StatelessWidget {
  const IconExample({super.key});

  // const IconExample({super.key});

  // const IconExample({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Icon(
        Icons.image,
        // size: 64.0,
        // color: Theme.of(context).primaryColor,
      ),
    );
  }
}
