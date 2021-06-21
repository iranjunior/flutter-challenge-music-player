import 'dart:math';

import 'package:flutter/material.dart';
import 'package:music_player_app/widgets/audio_wave_bar.dart';

class PlayerWave extends StatelessWidget {
  const PlayerWave({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          children: _buidWave(),
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '01:35/',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Text('04:43', style: Theme.of(context).textTheme.bodyText2),
          ],
        ),
      ],
    );
  }

  List<AudioWaveBar> _buidWave() {
    const sizeList = 31;
    List<double> sizes = [10.0, 20.0, 30.0, 40.0];
    return List.generate(
      sizeList,
      (index) => AudioWaveBar(
        height: sizes[Random().nextInt(sizes.length - 1)],
        color: Colors.black
            .withOpacity(sin(((2 * pi) * index) / (2 * (sizeList - 1)))),
      ),
    );
  }
}
