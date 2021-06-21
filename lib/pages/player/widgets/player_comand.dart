import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:music_player_app/constantes/colors.dart';

class PlayerCommand extends StatelessWidget {
  const PlayerCommand({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {},
          splashColor: Color(kDestakColor),
          splashRadius: 30,
          icon: Icon(Icons.fast_rewind),
          iconSize: 40,
        ),
        IconButton(
          onPressed: () {},
          splashColor: Color(kDestakColor),
          splashRadius: 30,
          icon: Icon(
            Icons.pause,
          ),
          iconSize: 40,
        ),
        IconButton(
          onPressed: () {},
          splashColor: Color(kDestakColor),
          splashRadius: 30,
          icon: Icon(Icons.fast_forward),
          iconSize: 40,
        ),
      ],
    );
  }
}
