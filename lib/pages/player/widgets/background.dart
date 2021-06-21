import 'package:flutter/material.dart';
import 'package:music_player_app/constantes/colors.dart';

class BackgroundPlayerPage extends StatelessWidget {
  const BackgroundPlayerPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [
          Color(kBackgroundGradientColor1),
          Color(kBackgroundGradientColor2)
        ],
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
      ),
    ));
  }
}
