import 'package:flutter/material.dart';
import 'package:music_player_app/pages/player/widgets/background.dart';
import 'package:music_player_app/pages/player/widgets/widgets.dart';

class PlayerPage extends StatefulWidget {
  PlayerPage({Key? key}) : super(key: key);

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
          body: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              PlayerIndicatorProgress(),
            ],
          ),
        )
      ],
    );
  }
}
