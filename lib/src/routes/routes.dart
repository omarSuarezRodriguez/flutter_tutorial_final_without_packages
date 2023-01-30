import 'package:flutter/material.dart';
import 'package:flutter_tutorial_final_without_packages/src/basics_screen/pages/20_tabs.dart';
import 'package:flutter_tutorial_final_without_packages/src/basics_screen/pages/22_bottom_tab_bar.dart';
import 'package:flutter_tutorial_final_without_packages/src/basics_screen/pages/23_bottom_navigation_bar.dart';
import 'package:flutter_tutorial_final_without_packages/src/basics_screen/pages/25_draggable.dart';
import 'package:flutter_tutorial_final_without_packages/src/basics_screen/pages/26_silver_collapsing_list.dart';
import 'package:flutter_tutorial_final_without_packages/src/basics_screen/pages/27_custom_paint.dart';
import 'package:flutter_tutorial_final_without_packages/src/basics_screen/pages/28_tool_tip.dart';
import 'package:flutter_tutorial_final_without_packages/src/basics_screen/pages/29_fitted_box.dart';
import 'package:flutter_tutorial_final_without_packages/src/basics_screen/pages/30_animated_icon.dart';
import 'package:flutter_tutorial_final_without_packages/src/basics_screen/pages/31_physical_model.dart';
import 'package:flutter_tutorial_final_without_packages/src/basics_screen/pages/32_data_table_example.dart';
import 'package:flutter_tutorial_final_without_packages/src/basics_screen/pages/33_clip_rect.dart';
import 'package:flutter_tutorial_final_without_packages/src/basics_screen/pages/34_selectable_text.dart';
import 'package:flutter_tutorial_final_without_packages/src/basics_screen/pages/35_radio_button.dart';
import 'package:flutter_tutorial_final_without_packages/src/basics_screen/pages/36_check_box.dart';
import 'package:flutter_tutorial_final_without_packages/src/basics_screen/pages/37_floating_action_button.dart';
import 'package:flutter_tutorial_final_without_packages/src/projects_screen/projects/01_login_01/01_login_screen_01.dart';
import 'package:flutter_tutorial_final_without_packages/src/widgets_screen/pages/03_circle_avatar.dart';
import 'package:flutter_tutorial_final_without_packages/src/widgets_screen/pages/04_toggle_buttons.dart';
import 'package:flutter_tutorial_final_without_packages/src/widgets_screen/pages/05_container.dart';
import 'package:flutter_tutorial_final_without_packages/src/widgets_screen/pages/06_snack_bar.dart';
import 'package:flutter_tutorial_final_without_packages/src/widgets_screen/pages/07_wrap.dart';
import 'package:flutter_tutorial_final_without_packages/src/widgets_screen/pages/09_spacer.dart';
import 'package:flutter_tutorial_final_without_packages/src/widgets_screen/pages/10_list_tile.dart';
import 'package:flutter_tutorial_final_without_packages/src/widgets_screen/pages/11_media_query.dart';
import 'package:flutter_tutorial_final_without_packages/src/widgets_screen/pages/12_list_view_builder.dart';
import 'package:flutter_tutorial_final_without_packages/src/widgets_screen/pages/13_grid_list.dart';
import 'package:flutter_tutorial_final_without_packages/src/widgets_screen/pages/14_expansion_tile.dart';
import 'package:flutter_tutorial_final_without_packages/src/widgets_screen/pages/15_dimissiable_list.dart';
import 'package:flutter_tutorial_final_without_packages/src/widgets_screen/pages/16_reorderable_list.dart';
import 'package:flutter_tutorial_final_without_packages/src/widgets_screen/pages/17_data_table.dart';
import 'package:flutter_tutorial_final_without_packages/src/widgets_screen/pages/18_basic_app_bar.dart';
import 'package:flutter_tutorial_final_without_packages/src/widgets_screen/pages/19_search.dart';
import 'package:flutter_tutorial_final_without_packages/src/widgets_screen/pages/20_sliver_app_bar.dart';

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
import '../../src/basics_screen/pages/15_curved_animation.dart';
import '../../src/basics_screen/pages/18_physics_card_drag.dart';
import '../../src/basics_screen/pages/19_repeating_animation.dart';
import '../basics_screen/pages/24_alignment_widget.dart';


import '../basics_screen/pages/21_navigation_drawer.dart';
import '../widgets_screen/pages/08_expanded_and_sized_box.dart';
import '../widgets_screen/widgets_screen.dart';
import '../widgets_screen/pages/01_icon.dart';
import '../widgets_screen/pages/02_text.dart';


import '../projects_screen/projects_screen.dart';


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
    '/basics_15'           : (BuildContext context) => const CurvedAnimationDemo(),
    '/basics_18'           : (BuildContext context) => const PhysicsCardDragDemo(),
    '/basics_19'           : (BuildContext context) => const RepeatingAnimationDemo(),
    '/basics_20'           : (BuildContext context) => const TabsExample(),
    '/basics_21'           : (BuildContext context) => const NavigationDrawer(),
    '/basics_22'           : (BuildContext context) => const DraggableScrollableShet(),
    '/basics_23'           : (BuildContext context) => const OpacityExamp(),
    '/basics_24'           : (BuildContext context) => const AlignmentWidgetExample(),
    '/basics_25'           : (BuildContext context) => const DraggablePageExample(),
    '/basics_26'           : (BuildContext context) => const SilverCollapsingListExample(),
    '/basics_27'           : (BuildContext context) => const CustomPaintExample(),
    '/basics_28'           : (BuildContext context) => const TooltipWidgetExample(),
    '/basics_29'           : (BuildContext context) => const FittedBoxWidgetExample(),
    '/basics_30'           : (BuildContext context) => const AnimatedIconWidgetExample(),
    '/basics_31'           : (BuildContext context) => const PhysicalmodelExample(),
    '/basics_32'           : (BuildContext context) => const DataTableExampleTwo(),
    '/basics_33'           : (BuildContext context) => const ClipRectExample(),
    '/basics_34'           : (BuildContext context) => const SelectableTextExample(),
    '/basics_35'           : (BuildContext context) => const RadioButtonExample(),
    '/basics_36'           : (BuildContext context) => const CheckBoxExample(),
    '/basics_37'           : (BuildContext context) => const FloatingActionButtonExample(),
    
    
    


    '/widgets_screen'      : (BuildContext context) => const WidgetsScreen(showNavBottomBar: true),
    '/widgets_01'          : (BuildContext context) => const IconWidget(),
    '/widgets_02'          : (BuildContext context) => const TextWidget(),
    '/widgets_03'          : (BuildContext context) => const CircleAvatarPage(),
    '/widgets_04'          : (BuildContext context) => const ToggleButtonsWidget(),
    '/widgets_05'          : (BuildContext context) => const ContainerWidget(),
    '/widgets_06'          : (BuildContext context) => const SnackBarWidget(),
    '/widgets_07'          : (BuildContext context) => const WrapWidget(),
    '/widgets_08'          : (BuildContext context) => const ExpandedWidget(),
    '/widgets_09'          : (BuildContext context) => const SpacerWidget(),
    '/widgets_10'          : (BuildContext context) => const ListTileWidget(),
    '/widgets_11'          : (BuildContext context) => const MediaQueryWidget(),
    '/widgets_12'          : (BuildContext context) => const ListViewBuilderWidget(),
    '/widgets_13'          : (BuildContext context) => const GridListWidget(),
    '/widgets_14'          : (BuildContext context) => const ExpansionTileWidget(),
    '/widgets_15'          : (BuildContext context) => const DimissiableListWidget(),
    '/widgets_16'          : (BuildContext context) => const ReordeableListWidget(),
    '/widgets_17'          : (BuildContext context) => const DataTableWidget(),
    '/widgets_18'          : (BuildContext context) => const BasicAppBarWidget(),
    '/widgets_19'          : (BuildContext context) => const SearchWidget(),
    '/widgets_20'          : (BuildContext context) => const SliverAppBarWidget(),
    
    
    
    


    '/projects_screen'     : (BuildContext context) => const ProjectsScreen(showNavBottomBar: true),
    '/projects_01'         : (BuildContext context) => const LoginScreen1Example(),
    
    
  
    
    
    
    



  };

}