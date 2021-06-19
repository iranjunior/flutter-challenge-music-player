import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_player_app/constantes/colors.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';

class AppBarHomePage extends StatelessWidget implements PreferredSizeWidget {
  const AppBarHomePage({Key? key}) : super(key: key);

  get preferredSize => Size.fromHeight(56.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(kBackgroundGradientColor1),
      centerTitle: false,
      elevation: 0,
          title: Icon(
        FluentIcons.list_28_filled,
        color: Colors.black,
        size: 32,
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/avatar.jpg'),
            radius: 32.0,
          ),
        ),
      ],
    );
  }

  noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
