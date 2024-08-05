import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:mega_music_player_app/widgets/bottomRadiusContainer_widget.dart'; // Add the just_audio package to your pubspec.yaml

class MusicPlayerScreen extends StatefulWidget {
  final String? musicTitle;

  const MusicPlayerScreen({Key? key, this.musicTitle}) : super(key: key);

  @override
  _MusicPlayerScreenState createState() => _MusicPlayerScreenState();
}

class _MusicPlayerScreenState extends State<MusicPlayerScreen> {
  late AudioPlayer _audioPlayer;

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer();
    _playMusic();
  }

  Future<void> _playMusic() async {
    final url =
        'https://your_firebase_storage_url/musics/${widget.musicTitle}.mp3'; // Update with your storage URL
    await _audioPlayer.setUrl(url);
    _audioPlayer.play();
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: BottomRadiusCard(
                  height: MediaQuery.of(context).size.height / 1.9,
                  width: MediaQuery.of(context).size.width / 1.4,
                  title: widget.musicTitle ?? 'Loading....',
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
