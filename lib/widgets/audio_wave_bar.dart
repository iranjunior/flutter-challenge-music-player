import 'package:flutter/material.dart';

class AudioWaveBar extends StatelessWidget {
  const AudioWaveBar(
      {Key? key,
      this.height = 10,
      this.color = Colors.black,
      this.padding = 3.0})
      : super(key: key);
  final double height;
  final Color color;
  final double padding;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.height,
      width: 6,
      margin: EdgeInsets.symmetric(horizontal: this.padding),
      decoration: BoxDecoration(
        color: this.color,
        borderRadius: BorderRadius.all(Radius.circular(this.height)),
      ),
    );
  }
}
