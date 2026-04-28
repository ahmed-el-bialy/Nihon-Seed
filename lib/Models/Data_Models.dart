import 'package:audioplayers/audioplayers.dart';

class DataModel {
  String japaneseWord;
  String englishWord;
  String? imagePath;
  String sound;

  DataModel({
    required this.japaneseWord,
    required this.englishWord,
    this.imagePath,
    required this.sound,
  });

  playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}
