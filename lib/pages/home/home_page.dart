import 'package:flutter/material.dart';
import 'package:music_player_app/models/album.dart';
import 'package:music_player_app/models/music.dart';
import 'package:music_player_app/pages/home/widgets/widgets.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final albuns = [
    Album.fromMap({'title': 'The Beatles', 'cover': 'assets/the-beatles.jpeg'}),
    Album.fromMap({'title': 'Pink Floyd', 'cover': 'assets/pink-floyd.jpeg'}),
    Album.fromMap({'title': 'Van Halen', 'cover': 'assets/van-halen.jpeg'}),
    Album.fromMap({'title': 'Warner', 'cover': 'assets/warner.jpeg'}),
  ];
  final musics = [
    Music.fromMap({
      'artist': 'The Moviment',
      'title': 'See you again',
      'image': 'assets/band.jpg'
    }),
    Music.fromMap({
      'artist': 'Rubens Mancio',
      'title': 'Te quiero',
      'image': 'assets/singer.jpg'
    }),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundHomePage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBarHomePage(),
          body: ContainerBody(
            child: Content(
              children: [
                TitleHomePage(),
                SearchField(),
                ListAlbunsHomePage(
                  albuns: albuns,
                ),
                ListMusicsHomePage(
                  musics: musics,
                ),
              ],
            ),
          ),
          bottomNavigationBar: BottomAppMusicPlayer(
            music: musics[0],
          ),
        )
      ],
    );
  }
}
