import 'package:flutter/material.dart';
import 'package:music_player_app/constantes/colors.dart';
import 'package:music_player_app/pages/pages.dart';

class ListMusicsHomePage extends StatefulWidget {
  ListMusicsHomePage({Key? key, required this.musics}) : super(key: key);
  final List<Map<String, dynamic>> musics;

  @override
  _ListMusicsHomePageState createState() => _ListMusicsHomePageState();
}

class _ListMusicsHomePageState extends State<ListMusicsHomePage> {
  int activeIndex = 0;
  static const kSize = 230.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: kSize,
      margin: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.musics.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => PlayerPage(),
              ),
            ),
            child: AspectRatio(
              aspectRatio: 1.1,
              child: Container(
                margin: const EdgeInsets.only(left: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  image: DecorationImage(
                    image: AssetImage(widget.musics[index]['cover']),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(kPrimaryColor).withOpacity(0.2),
                      blurRadius: 10,
                      spreadRadius: 1,
                      offset: Offset(1, 1),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
