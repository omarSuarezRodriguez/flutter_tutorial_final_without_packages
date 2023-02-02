
import 'package:flutter/material.dart';

class TextExampleTwo extends StatelessWidget {
  const TextExampleTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Text Example Two')),
      body: const Center(
        child: LTextWidget(),
      ),
    );
  }
}




class LTextWidget extends StatelessWidget {
  const LTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            // Simple Text Widget
            const Text('Simple Text'),

            //Simple Text Widget with custom styles

            const Text(
              'Over flow Text will skipped automatically. So lets have some Long text to get skipped',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),

            // Shadow Text
            const Text(
              'Shadow Text',
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 24,
                  shadows: <Shadow>[
                    Shadow(color: Colors.amber, offset: Offset(2, 4))
                  ]),
            ),
            // Text.rich- Text widget can display a paragraph with differently styled TextSpans
            //  Its similar to RichText

            const Text.rich(
              TextSpan(
                text: 'Hi, I am ',
                //default text style
                children: <TextSpan>[
                  TextSpan(
                      text: ' Italic, ',
                      style: TextStyle(fontStyle: FontStyle.italic)),
                  TextSpan(
                      text: 'Bold,',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(
                      text: 'Normal',
                      style: TextStyle(fontWeight: FontWeight.normal)),
                ],
              ),
            ),

            // RichText, which gives you more control over the text styles.

            RichText(
              softWrap: true,
              text: TextSpan(
                text: 'I am ',
                style: DefaultTextStyle.of(context).style,
                children: const <TextSpan>[
                  TextSpan(
                      text: 'RichText ',
                      style: TextStyle(color: Colors.green, fontSize: 24)),
                  TextSpan(
                      text: 'similar to ',
                      style: TextStyle(fontStyle: FontStyle.italic)),
                  TextSpan(
                      text: 'Text.rich',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
