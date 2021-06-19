import 'package:flutter/material.dart';
import 'package:music_player_app/constantes/colors.dart';

class ListAlbunsHomePage extends StatefulWidget {
  ListAlbunsHomePage({Key? key, required this.albuns}) : super(key: key);
  final List<Map<String, dynamic>> albuns;
  @override
  _ListAlbunsHomePageState createState() => _ListAlbunsHomePageState();
}

class _ListAlbunsHomePageState extends State<ListAlbunsHomePage> {
  static const kSize = 100.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: kSize,
      margin: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.albuns.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(left: 16),
            width: kSize,
            height: kSize,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              image: DecorationImage(
                image: AssetImage(widget.albuns[index]['cover']),
                fit: BoxFit.cover,
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(kPrimaryColor).withOpacity(0.2),
                  blurRadius: 10,
                  spreadRadius: 1,
                  offset: Offset(0, 3),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
