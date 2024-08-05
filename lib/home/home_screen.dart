import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:mega_music_player_app/musicPlayer/musicPlayer_Screen.dart';
import 'package:mega_music_player_app/themes/colors.dart';
import 'package:mega_music_player_app/widgets/bottomRadiusContainer_widget.dart';
import 'package:mega_music_player_app/widgets/transformable_list_view_widget.dart';
import 'package:transformable_list_view/transformable_list_view.dart'; // Import the package

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> _musicTitles = [];

  @override
  void initState() {
    super.initState();
    _fetchMusicTitles();
  }

  Future<void> _fetchMusicTitles() async {
    final ListResult result =
        await FirebaseStorage.instance.ref('musics').listAll();
    final List<Reference> allFiles = result.items;

    List<String> titles = [];
    for (var file in allFiles) {
      String title = file.name;
      title = title.split('.').first;
      titles.add(title);
    }

    setState(() {
      _musicTitles = titles;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundLight,
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
                  title: 'Anuv Jain',
                  subtitle: 'Artist',
                ),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: _musicTitles.isEmpty
                    ? Center(child: CircularProgressIndicator())
                    : TransformableListView.builder(
                        itemCount: _musicTitles.length,
                        getTransformMatrix: TransformMatrices.scaleDown,
                        itemBuilder: (context, index) {
                          return Card(
                            color: AppColors.backgroundDark,
                            child: ListTile(
                              onTap: () {},
                              leading: const Icon(
                                Icons.music_note,
                                color: AppColors.textOnRed,
                              ),
                              title: Text(
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                _musicTitles[index],
                                style: const TextStyle(
                                    color: AppColors.textOnRed,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Roboto'),
                              ),
                            ),
                          );
                        },
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
