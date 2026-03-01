import 'package:audioplayers/audioplayers.dart';
import 'package:injectable/injectable.dart';

import '../models/alarm_asset.dart';

@singleton
class AudioService {
  static final AudioService _instance = AudioService._internal();
  factory AudioService() => _instance;
  AudioService._internal();

  final AudioPlayer _player = AudioPlayer();

  Future<void> play(AlarmAsset asset) async {
    await _player.stop();
    await _player.play(AssetSource(asset.path), volume: 1.0, mode: PlayerMode.lowLatency);
  }

  Future<void> stop() async {
    await _player.stop();
  }
}
