import 'package:flutter/material.dart';
import 'package:music_player_app/constantes/colors.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'dart:math' show pi;

class PlayerIndicatorProgress extends StatefulWidget {
  const PlayerIndicatorProgress({Key? key, required this.imageUrl})
      : super(key: key);
  final String imageUrl;

  @override
  _PlayerIndicatorProgressState createState() =>
      _PlayerIndicatorProgressState();
}

class _PlayerIndicatorProgressState extends State<PlayerIndicatorProgress> {
  double value = 67;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Transform(
          // invete horizontalmente o slider
          transform: Matrix4.rotationY(pi),
          child: Transform.translate(
            // devido a inversão é necessário transladar o slider
            offset: Offset(-MediaQuery.of(context).size.width / 2 - 52, 0),
            child: Transform.rotate(
              // inverte verticalmente o slider
              angle: pi * 2,
              child: SleekCircularSlider(
                appearance: CircularSliderAppearance(
                  angleRange: 180,
                  startAngle: 0,
                  size: 260,
                  customColors: CustomSliderColors(
                      dotColor: Color(kDestakColor),
                      trackColor: Colors.grey.shade400,
                      progressBarColors: [
                        Color(kPrimaryColor),
                        Color(kSecondaryColor),
                        Color(kSecondaryColor)
                      ]),
                  customWidths: CustomSliderWidths(
                    progressBarWidth: 5,
                    trackWidth: 5,
                    shadowWidth: 0,
                    handlerSize: 15,
                  ),
                  infoProperties: InfoProperties(),
                ),
                min: 0,
                max: 100,
                initialValue: this.value,
                onChange: (value) {},
              ),
            ),
          ),
        ),
        Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            image: DecorationImage(
              image: AssetImage(this.widget.imageUrl),
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
        Positioned(
          left: 60 - 16,
          bottom: 140,
          child: IconButton(
              onPressed: () {
                setState(() {
                  value = 0;
                });
              },
              icon: Icon(Icons.volume_off),
              iconSize: 32,
              color: Colors.grey),
        ),
        Positioned(
          right: 60 - 16,
          bottom: 140,
          child: IconButton(
            onPressed: () {
              setState(() {
                value = 100;
              });
            },
            icon: Icon(Icons.volume_up_rounded),
            iconSize: 32,
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}
