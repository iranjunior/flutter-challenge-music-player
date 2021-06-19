import 'package:flutter/material.dart';
import 'package:music_player_app/pages/player/widgets/curved.dart';
import 'dart:math' as math;

import 'package:music_player_app/pages/player/widgets/curved_clipper.dart';

class PlayerIndicatorProgress extends StatelessWidget {
  const PlayerIndicatorProgress({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            image: DecorationImage(
                image: AssetImage('assets/avatar.png'), fit: BoxFit.cover),
          ),
        ),
        Container(
          height: 200,
          width: 200,
          child: ClipPath(
            clipper: ClipCurvedPath(),
            child: SizedBox(
              height: 10,
              child: Container(
                color: Colors.red,
              ),
            ),
          ),
        )
      ],
    );
  }
}
