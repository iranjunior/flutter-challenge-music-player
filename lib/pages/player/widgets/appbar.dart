import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_player_app/constantes/colors.dart';

class AppBarPlayerPage extends StatelessWidget implements PreferredSizeWidget {
  const AppBarPlayerPage({Key? key}) : super(key: key);
  static const kIconSize = 32.0;
  get preferredSize => Size.fromHeight(56.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(kBackgroundGradientColor1),
      centerTitle: false,
      iconTheme: Theme.of(context).iconTheme,
      elevation: 0,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.favorite),
          padding: EdgeInsets.zero,
          tooltip: 'Salve music',
          iconSize: kIconSize,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.more_vert),
          padding: EdgeInsets.zero,
          tooltip: 'Options',
          iconSize: kIconSize,
        ),
      ],
    );
  }

  noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
