
import 'package:flutter/material.dart';

class AnimatedIconExample extends StatelessWidget {
  const AnimatedIconExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animated Icon')),
      body: const Center(
        child: LAnimateIcon(),
      ),
    );
  }
}

class LAnimateIcon extends StatefulWidget {
  const LAnimateIcon({super.key});
  @override
  _LAnimateIconState createState() => _LAnimateIconState();
}

class _LAnimateIconState extends State<LAnimateIcon>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  bool isPlaying = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text("Click below buttons"),
              IconButton(
                iconSize: 50,
                tooltip: "play_pause",
                icon: AnimatedIcon(
                  icon: AnimatedIcons.play_pause,
                  progress: _animationController,
                  color: Colors.lightBlue,
                ),
                onPressed: () => _handleOnPressed(),
              ),
              IconButton(
                iconSize: 50,
                tooltip: "add_event",
                icon: AnimatedIcon(
                  icon: AnimatedIcons.add_event,
                  progress: _animationController,
                  color: Colors.green,
                ),
                onPressed: () => _handleOnPressed(),
              ),
              IconButton(
                iconSize: 50,
                tooltip: "arrow_menu",
                icon: AnimatedIcon(
                  icon: AnimatedIcons.arrow_menu,
                  progress: _animationController,
                  color: Colors.lightBlue,
                ),
                onPressed: () => _handleOnPressed(),
              ),
              IconButton(
                iconSize: 50,
                tooltip: 'ellipsis_search',
                icon: AnimatedIcon(
                  icon: AnimatedIcons.ellipsis_search,
                  progress: _animationController,
                  color: Colors.red,
                ),
                onPressed: () => _handleOnPressed(),
              ),
              IconButton(
                iconSize: 50,
                tooltip: "list_view",
                icon: AnimatedIcon(
                  icon: AnimatedIcons.list_view,
                  progress: _animationController,
                ),
                onPressed: () => _handleOnPressed(),
              ),
              IconButton(
                iconSize: 50,
                tooltip: "home_menu",
                icon: AnimatedIcon(
                  icon: AnimatedIcons.home_menu,
                  progress: _animationController,
                  color: Colors.pink,
                ),
                onPressed: () => _handleOnPressed(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _handleOnPressed() {
    setState(() {
      isPlaying = !isPlaying;
      isPlaying
          ? _animationController.forward()
          : _animationController.reverse();
    });
  }
}
