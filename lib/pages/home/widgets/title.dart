import 'package:flutter/material.dart';
import 'package:music_player_app/extensions/wigets.dart';

class TitleHomePage extends StatelessWidget {
  const TitleHomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        'My 🔈\nFavorite List',
        style: Theme.of(context).textTheme.headline1,
      ),
    );
  }
}
