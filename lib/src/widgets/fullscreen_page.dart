import 'package:flutter/material.dart';
import 'package:flutter_meedu/ui.dart';
import 'package:flutter_azul_player/azul_video_player.dart';

class MeeduPlayerFullscreenPage extends StatefulWidget {
  final MeeduPlayerController controller;
  final bool disposePlayer;
  const MeeduPlayerFullscreenPage(
      {Key? key, required this.controller, required this.disposePlayer})
      : super(key: key);
  @override
  MeeduPlayerFullscreenPageState createState() =>
      MeeduPlayerFullscreenPageState();
}

class MeeduPlayerFullscreenPageState extends State<MeeduPlayerFullscreenPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: RxBuilder(
        //observables: [controller.videoFit],
        (__) {
          return SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: FittedBox(
              fit: widget.controller.videoFit.value,
              child: SizedBox(
                width: size.width,
                height: size.height,
                child: MeeduVideoPlayer(
                  controller: widget.controller,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  Future<void> dispose() async {
    widget.controller.customDebugPrint("disposed");
    if (widget.disposePlayer) {
      widget.controller.videoPlayerClosed();
    } else {
      widget.controller.onFullscreenClose();
    }
    super.dispose();
  }
}
