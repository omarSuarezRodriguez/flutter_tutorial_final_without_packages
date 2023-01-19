import 'package:flutter/material.dart';

import '../../src/basics_screen/basics_screen.dart';
import '../../src/basics_screen/pages/01_animated_builder.dart';
import '../../src/basics_screen/pages/02_page_route_builder.dart';
import '../../src/basics_screen/pages/03_animation_controller.dart';
import '../../src/basics_screen/pages/04_tweens.dart';
import '../../src/basics_screen/pages/05_animated_container.dart';
import '../../src/basics_screen/pages/06_custom_tween.dart';
import '../../src/basics_screen/pages/07_tween_sequence.dart';
import '../../src/basics_screen/pages/08_fade_transition.dart';
import '../../src/basics_screen/pages/09_hero_animation.dart';
import '../../src/basics_screen/pages/10_animated_list.dart';
import '../../src/basics_screen/pages/11_animated_positioned.dart';
import '../../src/basics_screen/pages/12_animated_switcher.dart';
import '../../src/basics_screen/pages/13_card_swipe.dart';
import '../../src/basics_screen/pages/14_carousel.dart';
import '../../src/basics_screen/pages/15_curved_animation.dart';
import '../../src/basics_screen/pages/16_expand_card.dart';
import '../../src/basics_screen/pages/17_focus_image.dart';
import '../../src/basics_screen/pages/18_physics_card_drag.dart';
import '../../src/basics_screen/pages/19_repeating_animation.dart';



import '../projects_screen/projects_screen.dart';
import '../widgets_screen/pages/01_icon.dart';
import '../widgets_screen/pages/02_text.dart';
import '../widgets_screen/widgets_screen.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {

  return <String, WidgetBuilder> {


    '/basics_screen'       : (BuildContext context) => const BasicsScreen(showNavBottomBar: true), 
    '/basics_01'           : (BuildContext context) => const AnimatedBuilderDemo(),
    '/basics_02'           : (BuildContext context) => const PageRouteBuilderDemo(),
    '/basics_03'           : (BuildContext context) => const AnimationControllerDemo(),
    '/basics_04'           : (BuildContext context) => const TweenDemo(),
    '/basics_05'           : (BuildContext context) => const AnimatedContainerDemo(),
    '/basics_06'           : (BuildContext context) => const CustomTweenDemo(),
    '/basics_07'           : (BuildContext context) => const TweenSequenceDemo(),
    '/basics_08'           : (BuildContext context) => const FadeTransitionDemo(),
    '/basics_09'           : (BuildContext context) => const HeroAnimationDemo(),
    '/basics_10'           : (BuildContext context) => const AnimatedListDemo(),
    '/basics_11'           : (BuildContext context) => const AnimatedPositionedDemo(),
    '/basics_12'           : (BuildContext context) => const AnimatedSwitcherDemo(),
    '/basics_13'           : (BuildContext context) => const CardSwipeDemo(),
    '/basics_14'           : (BuildContext context) => CarouselDemo(),
    '/basics_15'           : (BuildContext context) => const CurvedAnimationDemo(),
    '/basics_16'           : (BuildContext context) => const ExpandCardDemo(),
    '/basics_17'           : (BuildContext context) => const FocusImageDemo(),
    '/basics_18'           : (BuildContext context) => const PhysicsCardDragDemo(),
    '/basics_19'           : (BuildContext context) => const RepeatingAnimationDemo(),


    '/widgets_screen'      : (BuildContext context) => const WidgetsScreen(showNavBottomBar: true),
    '/widgets_01'          : (BuildContext context) => const IconWidget(),
    '/widgets_02'          : (BuildContext context) => const TextWidget(),
    


    '/projects_screen'     : (BuildContext context) => const ProjectsScreen(showNavBottomBar: true),
    // '/projects_01'         : (BuildContext context) => const MyAdaptingApp(),
    
    
  
    
    
    
    



  };

}