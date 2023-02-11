import 'package:flutter/material.dart';

class FadeInImageExamplePage extends StatefulWidget {
  const FadeInImageExamplePage({super.key});

  @override
  State<FadeInImageExamplePage> createState() => _FadeInImageExamplePageState();
}

class _FadeInImageExamplePageState extends State<FadeInImageExamplePage> {
  @override
  Widget build(BuildContext context) {
    //Si queremos que la imagen de carga se recargue cada vez que iniciamos este widget, debemos
    //agregar imageCache.clear(); así:
    //Si no queremos, lo quitamos y ya quedará guardada en memoria la imagen y no cargará de nuevo
    imageCache.clear();
    return Scaffold(
      appBar: AppBar(
        title: const Text('FadeInImage Example'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(children: <Widget>[
            SizedBox(height: 20.0),
            FadeInImage(
              fadeOutDuration: Duration(seconds: 13),
              placeholder: NetworkImage(
                  'https://icons.iconarchive.com/icons/oxygen-icons.org/oxygen/128/Status-image-loading-icon.png'),
              image: NetworkImage(
                  'https://miro.medium.com/max/3200/1*mMJ3IvaAuMAmqjtyistCog.png'),
            ),
            SizedBox(height: 20.0),
            FadeInImage(
              fadeOutDuration: Duration(seconds: 10),
              placeholder: NetworkImage(
                  'https://icons.iconarchive.com/icons/oxygen-icons.org/oxygen/72/Status-image-loading-icon.png'),
              image: NetworkImage(
                  'https://miro.medium.com/max/3200/1*mMJ3IvaAuMAmqjtyistCog.png'),
            ),
            SizedBox(height: 20.0),
            FadeInImage(
              fadeOutDuration: Duration(seconds: 10),
              placeholder: NetworkImage(
                  'https://icons.iconarchive.com/icons/oxygen-icons.org/oxygen/48/Status-image-loading-icon.png'),
              image: NetworkImage(
                  'https://miro.medium.com/max/3200/1*mMJ3IvaAuMAmqjtyistCog.png'),
            ),
            SizedBox(height: 20.0),
            FadeInImage(
              fadeOutDuration: Duration(seconds: 10),
              placeholder: NetworkImage(
                  'https://icons.iconarchive.com/icons/streamlineicons/streamline-ux-free/128/monitor-loading-progress-icon.png'),
              image: NetworkImage(
                  'https://miro.medium.com/max/3200/1*mMJ3IvaAuMAmqjtyistCog.png'),
            ),
            SizedBox(height: 20.0),
            FadeInImage(
              fadeOutDuration: Duration(seconds: 10),
              placeholder: NetworkImage(
                  'https://icons.iconarchive.com/icons/saki/nuoveXT-2/128/Status-image-loading-icon.png'),
              image: NetworkImage(
                  'https://miro.medium.com/max/3200/1*mMJ3IvaAuMAmqjtyistCog.png'),
            ),
          ]),
        ),
      ),
    );
  }
}




// class FadeInImageExamplePage extends StatelessWidget {
//   const FadeInImageExamplePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('FadeInImage Example'),
//       ),
//       body: Center(
//         child: FadeInImage(
//           key: UniqueKey(),
//           fadeOutDuration: Duration(seconds: 5),
//           placeholder: NetworkImage(
//               'https://cdn-icons-png.flaticon.com/512/6356/6356659.png'),
//           image: NetworkImage(
//               'https://miro.medium.com/max/3200/1*mMJ3IvaAuMAmqjtyistCog.png'),
//         ),
//       ),
//     );
//   }
// }
