import 'package:flutter/material.dart';
import 'package:music_player_app/constantes/colors.dart';

class BackgroundHomePage extends StatelessWidget {
  const BackgroundHomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
    );
  }
}
