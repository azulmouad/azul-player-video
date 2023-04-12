import 'package:flutter/widgets.dart';
import 'package:flutter_azul_player/azul_video_player.dart';

Future<void> initMeeduPlayer({bool iosUseMediaKit = false}) async {
  WidgetsFlutterBinding.ensureInitialized();
  // if (UniversalPlatform.isWindows ||
  //     UniversalPlatform.isLinux ||
  //     UniversalPlatform.isMacOS) {

  // }

  initVideoPlayerMediaKitIfNeeded(iosUseMediaKit: iosUseMediaKit);
}
