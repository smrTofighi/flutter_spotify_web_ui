import 'package:flutter/material.dart';
import 'package:flutter_spotify_ui/data/data.dart';
import 'package:flutter_spotify_ui/gen/assets.gen.dart';
import 'package:icons_plus/icons_plus.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: 280,
      color: Theme.of(context).primaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Image.asset(
              Assets.images.spotifyLogo.path,
              height: 55,
              filterQuality: FilterQuality.high,
            ),
          ),
          SideMenuIconTab(
            title: 'Home',
            icon: EvaIcons.home,
            onTap: () {},
          ),
          SideMenuIconTab(
            title: 'Search',
            icon: EvaIcons.search,
            onTap: () {},
          ),
          SideMenuIconTab(
            title: 'Radio',
            icon: EvaIcons.music,
            onTap: () {},
          ),
          SizedBox(height: 12,),
          LibraryPlayLists()
        ],
      ),
    );
  }
}

class LibraryPlayLists extends StatefulWidget {
  const LibraryPlayLists({super.key});

  @override
  State<LibraryPlayLists> createState() => _LibraryPlayListsState();
}

// ignore: unused_element
late ScrollController _scrollController;

class _LibraryPlayListsState extends State<LibraryPlayLists> {
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
    return Expanded(
      child: Scrollbar(
        interactive: true,
        controller: _scrollController,
        child: ListView(
          controller: _scrollController,
          padding: const EdgeInsets.symmetric(vertical: 12),
          physics: const ClampingScrollPhysics(),
          children: [
           Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
              child: Text(
                'your library'.toUpperCase(),
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            ...yourLibrary.map(
              (e) => ListTile(
                dense: true,
                title: Text(
                  e,
                  style: Theme.of(context).textTheme.bodyMedium,
                  overflow: TextOverflow.ellipsis,
                ),
                onTap: () {},
              ),
            )
            ],
           ),
           SizedBox(height: 24,),
           Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
              child: Text(
                'playlists'.toUpperCase(),
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            ...playlists.map(
              (e) => ListTile(
                dense: true,
                title: Text(
                  e,
                  style: Theme.of(context).textTheme.bodyMedium,
                  overflow: TextOverflow.ellipsis,
                ),
                onTap: () {},
              ),
            )
            ],
           )
          ],
        ),
      ),
    );
  }
}

class SideMenuIconTab extends StatelessWidget {
  const SideMenuIconTab({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
  });
  final String title;
  final IconData icon;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: Theme.of(context).iconTheme.color,
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodyLarge,
        overflow: TextOverflow.ellipsis,
      ),
      onTap: onTap,
    );
  }
}
