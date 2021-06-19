import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:music_player_app/constantes/colors.dart';

class BottomAppMusicPlayer extends StatelessWidget {
  const BottomAppMusicPlayer({
    Key? key,
    required this.music
  }) : super(key: key);

  final Map<String, dynamic> music;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 0,
      child: Row(
        children: [
          Container(
            height: 120,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: Container(
                          height: 44,
                          width: 44,
                          decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8)),
                            image: DecorationImage(
                              image: AssetImage(music['cover']),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                music['title'],
                                style: Theme.of(context).textTheme.subtitle1,
                              ),
                              Text(
                                music['artist'],
                                style: Theme.of(context).textTheme.subtitle2,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(child: Icon(FluentIcons.pause_20_filled)),
                      Expanded(child: Icon(FluentIcons.fast_forward_20_filled)),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        '1:43',
                        style: Theme.of(context).textTheme.caption,
                      ),
                      Expanded(
                        child: Material(
                          elevation: 0,
                          color: Colors.transparent,
                          child: SliderTheme(
                            data: SliderThemeData(
                                activeTrackColor:
                                    Theme.of(context).primaryColor,
                                inactiveTrackColor: Colors.grey,
                                showValueIndicator: ShowValueIndicator.never,
                                trackHeight: 2,
                                trackShape: RoundedRectSliderTrackShape(),
                                activeTickMarkColor:
                                    Theme.of(context).primaryColor,
                                inactiveTickMarkColor: Theme.of(context)
                                    .primaryColor
                                    .withOpacity(0.2),
                                thumbColor: Theme.of(context).primaryColor,
                                thumbShape: RoundSliderThumbShape(
                                  enabledThumbRadius: 8.0,
                                  disabledThumbRadius: 12.0,
                                ),
                                overlayColor: Theme.of(context).primaryColor,
                                overlayShape: RoundSliderOverlayShape(
                                  overlayRadius: 16.0,
                                ),
                                tickMarkShape: RoundSliderTickMarkShape()),
                            child: Slider(
                                value: 67,
                                min: 0,
                                max: 100,
                                onChanged: (value) {}),
                          ),
                        ),
                      ),
                      Text(
                        '3:43',
                        style: Theme.of(context).textTheme.caption,
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
