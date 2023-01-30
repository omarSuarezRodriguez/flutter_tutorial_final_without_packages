// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class BasicsScreen extends StatelessWidget {
  const BasicsScreen({super.key, required bool showNavBottomBar});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: <Widget>[

          const SizedBox(height: 7),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/basics_01');
            },
            child: const ListTile(
              title: Text('1. Animated Builder'),
              leading: Icon(
                Icons.data_object_rounded,
                color: Colors.lime,
              ),
            ),
          ),


          const SizedBox(height: 7),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/basics_02');
            },
            child: const ListTile(
              title: Text('2. Page Route Builder'),
              leading: Icon(
                Icons.data_object_rounded,
                color: Colors.lime,
              ),
            ),
          ),

          const SizedBox(height: 7),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/basics_03');
            },
            child: const ListTile(
              title: Text('3. Animation Controller'),
              leading: Icon(
                Icons.data_object_rounded,
                color: Colors.lime,
              ),
            ),
          ),

          const SizedBox(height: 7),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/basics_04');
            },
            child: const ListTile(
              title: Text('4. Tweens'),
              leading: Icon(
                Icons.data_object_rounded,
                color: Colors.lime,
              ),
            ),
          ),

          const SizedBox(height: 7),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/basics_05');
            },
            child: const ListTile(
              title: Text('5. Animated Container'),
              leading: Icon(
                Icons.data_object_rounded,
                color: Colors.lime,
              ),
            ),
          ),

          const SizedBox(height: 7),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/basics_06');
            },
            child: const ListTile(
              title: Text('6. Custom Tween'),
              leading: Icon(
                Icons.data_object_rounded,
                color: Colors.lime,
              ),
            ),
          ),

          const SizedBox(height: 7),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/basics_07');
            },
            child: const ListTile(
              title: Text('7. Tween Sequence'),
              leading: Icon(
                Icons.data_object_rounded,
                color: Colors.lime,
              ),
            ),
          ),

          const SizedBox(height: 7),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/basics_08');
            },
            child: const ListTile(
              title: Text('8. Fade Transition'),
              leading: Icon(
                Icons.data_object_rounded,
                color: Colors.lime,
              ),
            ),
          ),

          const SizedBox(height: 7),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/basics_09');
            },
            child: const ListTile(
              title: Text('9. Hero Animation'),
              leading: Icon(
                Icons.data_object_rounded,
                color: Colors.lime,
              ),
            ),
          ),

          const SizedBox(height: 7),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/basics_10');
            },
            child: const ListTile(
              title: Text('10. Animated List'),
              leading: Icon(
                Icons.data_object_rounded,
                color: Colors.lime,
              ),
            ),
          ),

          const SizedBox(height: 7),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/basics_11');
            },
            child: const ListTile(
              title: Text('11. Animated Positioned'),
              leading: Icon(
                Icons.data_object_rounded,
                color: Colors.lime,
              ),
            ),
          ),

          const SizedBox(height: 7),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/basics_12');
            },
            child: const ListTile(
              title: Text('12. Animated Switcher'),
              leading: Icon(
                Icons.data_object_rounded,
                color: Colors.lime,
              ),
            ),
          ),


          const SizedBox(height: 7),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/basics_15');
            },
            child: const ListTile(
              title: Text('15. Curved Animation'),
              leading: Icon(
                Icons.data_object_rounded,
                color: Colors.lime,
              ),
            ),
          ),

          

          const SizedBox(height: 7),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/basics_18');
            },
            child: const ListTile(
              title: Text('18. Physics Card Drag'),
              leading: Icon(
                Icons.data_object_rounded,
                color: Colors.lime,
              ),
            ),
          ),

          const SizedBox(height: 7),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/basics_19');
            },
            child: const ListTile(
              title: Text('19. Repeating Animation'),
              leading: Icon(
                Icons.data_object_rounded,
                color: Colors.lime,
              ),
            ),
          ),

          const SizedBox(height: 7),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/basics_20');
            },
            child: const ListTile(
              title: Text('20. Tabs'),
              leading: Icon(
                Icons.data_object_rounded,
                color: Colors.lime,
              ),
            ),
          ),



          const SizedBox(height: 7),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/basics_21');
            },
            child: const ListTile(
              title: Text('21. Navigation Drawer'),
              leading: Icon(
                Icons.data_object_rounded,
                color: Colors.lime,
              ),
            ),
          ),


          const SizedBox(height: 7),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/basics_22');
            },
            child: const ListTile(
              title: Text('22. Draggable Scrollable Sheet'),
              leading: Icon(
                Icons.data_object_rounded,
                color: Colors.lime,
              ),
            ),
          ),


          const SizedBox(height: 7),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/basics_23');
            },
            child: const ListTile(
              title: Text('23. Opacity'),
              leading: Icon(
                Icons.data_object_rounded,
                color: Colors.lime,
              ),
            ),
          ),


          const SizedBox(height: 7),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/basics_24');
            },
            child: const ListTile(
              title: Text('24. Alignment'),
              leading: Icon(
                Icons.data_object_rounded,
                color: Colors.lime,
              ),
            ),
          ),

          const SizedBox(height: 7),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/basics_25');
            },
            child: const ListTile(
              title: Text('25. Draggable'),
              leading: Icon(
                Icons.data_object_rounded,
                color: Colors.lime,
              ),
            ),
          ),


          const SizedBox(height: 7),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/basics_26');
            },
            child: const ListTile(
              title: Text('26. Silver Collapsing List'),
              leading: Icon(
                Icons.data_object_rounded,
                color: Colors.lime,
              ),
            ),
          ),



          const SizedBox(height: 7),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/basics_27');
            },
            child: const ListTile(
              title: Text('27. Custom Paint'),
              leading: Icon(
                Icons.data_object_rounded,
                color: Colors.lime,
              ),
            ),
          ),


          const SizedBox(height: 7),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/basics_28');
            },
            child: const ListTile(
              title: Text('28. Tooltip'),
              leading: Icon(
                Icons.data_object_rounded,
                color: Colors.lime,
              ),
            ),
          ),

          const SizedBox(height: 7),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/basics_29');
            },
            child: const ListTile(
              title: Text('29. Fitted Box'),
              leading: Icon(
                Icons.data_object_rounded,
                color: Colors.lime,
              ),
            ),
          ),


          const SizedBox(height: 7),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/basics_30');
            },
            child: const ListTile(
              title: Text('30. Animated Icon'),
              leading: Icon(
                Icons.data_object_rounded,
                color: Colors.lime,
              ),
            ),
          ),


          const SizedBox(height: 7),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/basics_31');
            },
            child: const ListTile(
              title: Text('31. Physical Model'),
              leading: Icon(
                Icons.data_object_rounded,
                color: Colors.lime,
              ),
            ),
          ),


          const SizedBox(height: 7),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/basics_32');
            },
            child: const ListTile(
              title: Text('32. Data Table Two'),
              leading: Icon(
                Icons.data_object_rounded,
                color: Colors.lime,
              ),
            ),
          ),


          const SizedBox(height: 7),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/basics_33');
            },
            child: const ListTile(
              title: Text('33. Clip Rect'),
              leading: Icon(
                Icons.data_object_rounded,
                color: Colors.lime,
              ),
            ),
          ),

          const SizedBox(height: 7),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/basics_34');
            },
            child: const ListTile(
              title: Text('34. Selectable Text'),
              leading: Icon(
                Icons.data_object_rounded,
                color: Colors.lime,
              ),
            ),
          ),

          const SizedBox(height: 7),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/basics_35');
            },
            child: const ListTile(
              title: Text('35. Radio Button'),
              leading: Icon(
                Icons.data_object_rounded,
                color: Colors.lime,
              ),
            ),
          ),

          const SizedBox(height: 7),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/basics_36');
            },
            child: const ListTile(
              title: Text('36. CheckBox'),
              leading: Icon(
                Icons.data_object_rounded,
                color: Colors.lime,
              ),
            ),
          ),

          const SizedBox(height: 7),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/basics_37');
            },
            child: const ListTile(
              title: Text('37. Floating Action Button'),
              leading: Icon(
                Icons.data_object_rounded,
                color: Colors.lime,
              ),
            ),
          ),




        ],
        
      ),
    );
  }
}

class TextStyleExample extends StatelessWidget {
  const TextStyleExample({
    super.key,
    required this.name,
    required this.style,
  });

  final String name;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(name, style: style),
    );
  }
}
