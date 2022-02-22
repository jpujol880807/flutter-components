import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = 'home';
  static final menuOptions = <MenuOption> [
    MenuOption(route: 'listview1',  name: 'List View tipo 1', screen: const ListView1Screen(), icon: Icons.list_alt),
    MenuOption(route: 'listview2',  name: 'List View tipo 2', screen: const ListView2Screen(), icon: Icons.list),
    MenuOption(route: 'alert',  name: 'Alertas - Alert', screen: const AlertScreen(), icon: Icons.warning_amber_outlined),
    MenuOption(route: 'card',  name: 'Tarjetas - Cards', screen: const CardScreen(), icon: Icons.card_giftcard_outlined),
    MenuOption(route: 'avatar',  name: 'Avatar', screen: const AvatarScreen(), icon: Icons.supervised_user_circle_outlined),
    MenuOption(route: 'animated',  name: 'Animated Container', screen: const AnimatedScreen(), icon: Icons.play_circle_outlined),
    MenuOption(route: 'inputs',  name: 'Form Inputs', screen: const InputsScreen(), icon: Icons.input_rounded),
    MenuOption(route: 'slider',  name: 'Sliders and checks', screen: const SliderScreen(), icon: Icons.slow_motion_video_rounded),
    MenuOption(route: 'listviewbuilder',  name: 'Infinite Scroll & Pull to refresh', screen: const ListViewBuilderScreen(), icon: Icons.build_circle_outlined),
  ];
  static Map<String, Widget Function(BuildContext)> getAppRoutes () {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll(
      {'home':(BuildContext context) => const HomeScreen()}
    );
    for (final option in menuOptions) {
      appRoutes.addAll({option.route:(BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}