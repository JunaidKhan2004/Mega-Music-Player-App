// app_drawer.dart
import 'package:flutter/material.dart';
import 'package:drawerbehavior/drawerbehavior.dart';
import 'package:mega_music_player_app/themes/colors.dart';

class AppDrawer extends StatefulWidget {
  final Widget child;
  final String selectedMenuItemId;

  const AppDrawer(
      {required this.child, required this.selectedMenuItemId, Key? key})
      : super(key: key);

  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  final menu = Menu(
    items: [
      MenuItem(id: 'HomeScreen', title: 'Home'),
      MenuItem(id: 'MusicPlayerScreen', title: 'Music Player'),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return DrawerScaffold(
      drawers: [
        SideDrawer(
          color: AppColors.backgroundDark,
          percentage: 0.8,
          menu: menu,
          animation: true,
          selectedItemId: widget.selectedMenuItemId,
          onMenuItemSelected: (itemId) {
            if (itemId != widget.selectedMenuItemId) {
              Navigator.pushReplacementNamed(context, itemId);
            }
          },
        ),
      ],
      builder: (context, id) {
        return widget.child;
      },
    );
  }
}
