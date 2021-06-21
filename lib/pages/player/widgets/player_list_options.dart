import 'package:flutter/material.dart';
import 'package:music_player_app/constantes/colors.dart';

class PlayerListOptions extends StatelessWidget {
  const PlayerListOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          onPressed: () {},
          splashColor: Color(kDestakColor),
          splashRadius: 30,
          icon: Icon(Icons.playlist_play),
          iconSize: 46,
        ),
        IconButton(
          onPressed: () {},
          splashColor: Color(kDestakColor),
          splashRadius: 30,
          icon: Icon(Icons.repeat),
          iconSize: 46,
        ),
        IconButton(
          onPressed: () {},
          splashColor: Color(kDestakColor),
          splashRadius: 30,
          icon: Icon(
            Icons.shuffle,
          ),
          iconSize: 46,
        ),
        IconButton(
          onPressed: () {},
          splashColor: Color(kDestakColor),
          splashRadius: 30,
          icon: Icon(Icons.playlist_add),
          iconSize: 46,
        ),
      ],
    );
  }
}
