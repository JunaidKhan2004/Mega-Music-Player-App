import 'package:flutter/material.dart';
import 'package:mega_music_player_app/themes/colors.dart';

class BottomRadiusCard extends StatelessWidget {
  final String? imagePath;
  final String? title;
  final String? subtitle;
  final double? width;
  final double? height;

  const BottomRadiusCard({
    Key? key,
    this.imagePath,
    this.title,
    this.subtitle,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(150.0),
          bottomRight: Radius.circular(150.0),
        ),
      ),
      elevation: 15,
      clipBehavior: Clip.antiAlias,
      child: Stack(
        children: [
          Container(
            width: width ?? 200.0,
            height: height ?? 300.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(imagePath ??
                    'https://i.pinimg.com/564x/e5/cb/f0/e5cbf000b7a10b9bd096e3f86fd61f21.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: Container(
              height: height != null ? height! * 0.3 : 90.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.black, Colors.transparent],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(150.0),
                  bottomRight: Radius.circular(150.0),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (title != null)
                    Text(
                      title!,
                      style: TextStyle().copyWith(color: AppColors.textPrimary),
                    ),
                  if (subtitle != null)
                    Text(
                      subtitle!,
                      style: TextStyle(
                          color: AppColors.textSecondary, fontSize: 14),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
