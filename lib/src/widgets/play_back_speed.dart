import 'package:flutter/material.dart';
import 'package:flutter_meedu/ui.dart';
import 'package:flutter_azul_player/azul_video_player.dart';

import 'package:flutter_azul_player/src/helpers/responsive.dart';

class PlayBackSpeedButton extends StatelessWidget {
  final Responsive responsive;
  final TextStyle textStyle;
  const PlayBackSpeedButton(
      {Key? key, required this.responsive, required this.textStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _ = MeeduPlayerController.of(context);

    return RxBuilder(
        //observables: [_.fullscreen],
        (__) {
      return TextButton(
        style: TextButton.styleFrom(
          padding:
              EdgeInsets.all(responsive.ip(_.fullscreen.value ? 5 : 7) * 0.25),
        ),
        onPressed: () {
          _.customDebugPrint("s");
          _.togglePlaybackSpeed();
        },
        child: Text(
          _.playbackSpeed.toString(),
          style: textStyle,
        ),
      );
    });
  }
}
