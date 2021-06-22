import 'package:flutter/material.dart';
import 'package:music_player_app/models/models.dart';
import 'package:music_player_app/pages/player/widgets/background.dart';
import 'package:music_player_app/pages/player/widgets/widgets.dart';

class PlayerPage extends StatefulWidget {
  PlayerPage({Key? key, required this.music}) : super(key: key);
  final Music music;
  @override
  _PlayerPageState createState() => _PlayerPageState();
}

class _PlayerPageState extends State<PlayerPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundPlayerPage(),
        Scaffold(
          appBar: AppBarPlayerPage(),
          backgroundColor: Colors.transparent,
          body: Content(
            children: [
              Flexible(
                flex: 7,
                child: PlayerIndicatorProgress(
                  imageUrl: widget.music.image,
                ),
              ),
              Spacer(),
              Flexible(
                flex: 1,
                child: PlayerOptions(
                  music: widget.music,
                ),
              ),
              Spacer(),
              Flexible(
                flex: 2,
                child: PlayerWave(),
              ),
              Spacer(),
              Flexible(
                flex: 2,
                child: PlayerCommand(),
              ),
              Spacer(
                flex: 2,
              ),
              Flexible(
                flex: 2,
                child: PlayerListOptions(),
              ),
            ],
          ),
        )
      ],
    );
  }
}