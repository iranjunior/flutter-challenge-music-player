import 'package:flutter/material.dart';
import 'package:music_player_app/models/music.dart';

class PlayerOptions extends StatelessWidget {
  const PlayerOptions({Key? key, required this.music}) : super(key: key);
  final Music music;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 4,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                music.title,
                style: Theme.of(context).textTheme.subtitle1,
              ),
              Text(
                music.artist,
                style: Theme.of(context).textTheme.subtitle2,
              ),
            ],
          ),
        ),
        Expanded(
          child: IconButton(onPressed: () {}, icon: Icon(Icons.download)),
        ),
        Expanded(
          child: IconButton(onPressed: () {}, icon: Icon(Icons.person_add)),
        ),
        Expanded(
          child: IconButton(onPressed: () {}, icon: Icon(Icons.share)),
        ),
      ],
    );
  }
}
