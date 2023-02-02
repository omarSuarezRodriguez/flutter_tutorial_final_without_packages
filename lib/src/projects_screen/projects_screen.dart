// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key, required bool showNavBottomBar});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: <Widget>[

          const SizedBox(height: 7),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/projects_01');
            },
            child: const ListTile(
              title: Text('1. Login Screen 1'),
              leading: Icon(
                Icons.data_object_rounded,
                color: Colors.lime,
              ),
            ),
          ),

          const SizedBox(height: 7),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/projects_02');
            },
            child: const ListTile(
              title: Text('2. Login Screen 2'),
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
