import 'package:flutter/material.dart';
import 'package:flutter_spotify_ui/components/play_list_header.dart';
import 'package:flutter_spotify_ui/components/tracks_list.dart';
import 'package:flutter_spotify_ui/data/data.dart';
import 'package:icons_plus/icons_plus.dart';

class PlayListScreen extends StatefulWidget {
  const PlayListScreen({super.key, required this.playlist});
  final PlayList playlist;
  @override
  State<PlayListScreen> createState() => _PlayListScreenState();
}

class _PlayListScreenState extends State<PlayListScreen> {
  late ScrollController _scrollController;
  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 140,
        actions: [
          TextButton.icon(
            style: TextButton.styleFrom(
              iconColor: Theme.of(context).iconTheme.color,
            ),
            onPressed: () {},
            icon: const Icon(
              Icons.account_circle_outlined,
              size: 30,
            ),
            label: Text(
              'Mohammad.R',
              style: TextStyle(color: Theme.of(context).iconTheme.color),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          IconButton(
            onPressed: () {},
            padding: const EdgeInsets.only(),
            icon: const Icon(
              Icons.keyboard_arrow_down,
              size: 30,
            ),
          ),
          const SizedBox(
            width: 20,
          )
        ],
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                customBorder: const CircleBorder(),
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(6.0),
                  decoration: const BoxDecoration(
                      color: Colors.black26, shape: BoxShape.circle),
                  child: const Icon(EvaIcons.arrow_ios_back),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              InkWell(
                customBorder: const CircleBorder(),
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(6.0),
                  decoration: const BoxDecoration(
                      color: Colors.black26, shape: BoxShape.circle),
                  child: const Icon(EvaIcons.arrow_ios_forward),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Theme.of(context).primaryColorDark, Theme.of(context).cardColor],
            stops: const [0, 0.3],
          ),
        ),
        child: Scrollbar(
          controller: _scrollController,
          child: ListView(
            controller: _scrollController,
            padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
            children: [
              PlayListHeader(
                playList: widget.playlist,
              ),
              TracksList(tracks: widget.playlist.songs)
            ],
          ),
        ),
      ),
    );
  }
}
