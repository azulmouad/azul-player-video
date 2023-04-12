/// this class helps you to hide some player buttons
class EnabledButtons {
  final bool playPauseAndRepeat,
      rewindAndfastForward,
      videoFit,
      muteAndSound,
      pip,
      fullscreen,
      playBackSpeed;

  const EnabledButtons({
    this.playPauseAndRepeat = false,
    this.rewindAndfastForward = false,
    this.videoFit = false,
    this.muteAndSound = false,
    this.pip = false,
    this.fullscreen = false,
    this.playBackSpeed = false,
  });
}
