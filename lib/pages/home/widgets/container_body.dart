import 'package:flutter/material.dart';
import 'package:music_player_app/constantes/colors.dart';


class ContainerBody extends StatelessWidget {
  const ContainerBody({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(60)),
        gradient: LinearGradient(
          colors: [
            Color(kBackgroundGradientColor1),
            Color(kBackgroundGradientColor2)
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
      ),
      child: this.child,
    );
  }
}
