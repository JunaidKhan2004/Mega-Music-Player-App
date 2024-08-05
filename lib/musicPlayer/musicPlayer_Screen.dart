import 'package:flutter/material.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:audioplayers/audioplayers.dart';

class MusicPlayerScreen extends StatefulWidget {
  @override
  _MusicPlayerScreenState createState() => _MusicPlayerScreenState();
}

class _MusicPlayerScreenState extends State<MusicPlayerScreen> {
  final OnAudioQuery audioQuery = OnAudioQuery();
  List<SongModel> songs = [];
  AudioPlayer audioPlayer = AudioPlayer();
  SongModel? currentSong;

  @override
  void initState() {
    super.initState();
    requestPermissions();
  }

  Future<void> requestPermissions() async {
    if (await Permission.storage.request().isGranted) {
      fetchSongs();
    }
  }

  Future<void> fetchSongs() async {
    List<SongModel> fetchedSongs = await audioQuery.querySongs();
    setState(() {
      songs = fetchedSongs;
    });
  }

  void playSong(SongModel song) async {
    await audioPlayer.play(DeviceFileSource(song.data));
    setState(() {
      currentSong = song;
    });
  }

  void stopSong() async {
    await audioPlayer.stop();
    setState(() {
      currentSong = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Music Player'),
      ),
      body: Column(
        children: [
          currentSong != null
              ? ListTile(
                  title: Text(currentSong!.title),
                  subtitle: Text(currentSong!.artist ?? 'Unknown Artist'),
                  trailing: IconButton(
                    icon: Icon(Icons.stop),
                    onPressed: stopSong,
                  ),
                )
              : Container(),
          Expanded(
            child: ListView.builder(
              itemCount: songs.length,
              itemBuilder: (context, index) {
                final song = songs[index];
                return ListTile(
                  title: Text(song.title),
                  subtitle: Text(song.artist ?? 'Unknown Artist'),
                  onTap: () => playSong(song),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
