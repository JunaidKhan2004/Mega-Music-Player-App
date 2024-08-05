import 'package:flutter/material.dart';
import 'package:mega_music_player_app/home/home_screen.dart';
import 'package:mega_music_player_app/musicPlayer/musicPlayer_Screen.dart';
import 'package:page_transition/page_transition.dart';

class AppRoutes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'HomeScreen':
        return PageTransition(
          type: PageTransitionType.fade,
          child: HomeScreen(),
          settings: settings,
        );
      case 'MusicPlayerScreen':
        return PageTransition(
          type: PageTransitionType.rightToLeft,
          child: MusicPlayerScreen(),
          settings: settings,
        );

      default:
        return PageTransition(
          type: PageTransitionType.fade,
          child: HomeScreen(),
          settings: settings,
        );
    }
  }
}
