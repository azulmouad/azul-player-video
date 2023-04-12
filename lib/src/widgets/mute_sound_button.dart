import 'package:flutter/material.dart';
import 'package:flutter_azul_player/azul_video_player.dart';

import 'package:flutter_azul_player/src/helpers/responsive.dart';

class MuteSoundButton extends StatelessWidget {
  final Responsive responsive;
  const MuteSoundButton({Key? key, required this.responsive}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _ = MeeduPlayerController.of(context);
    return const SizedBox();
  }
}
