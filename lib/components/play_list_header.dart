import 'package:flutter/material.dart';
import 'package:flutter_spotify_ui/data/data.dart';
import 'package:icons_plus/icons_plus.dart';

class PlayListHeader extends StatelessWidget {
  const PlayListHeader({super.key, required this.playList});
  final PlayList playList;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(
              playList.imageURL,
              height: 200,
              width: 200,
              fit: BoxFit.cover,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'playlist'.toUpperCase(),
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall!
                        .copyWith(fontSize: 12),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    playList.name,
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    playList.description,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Created By ${playList.creator} . ${playList.songs.length} songs, ${playList.duration}',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        PlayListButton(
          followers: playList.followers,
        )
      ],
    );
  }
}

class PlayListButton extends StatelessWidget {
  const PlayListButton({super.key, required this.followers});
  final String followers;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          style: TextButton.styleFrom(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 48,
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            backgroundColor: Theme.of(context).primaryColorDark,
          ),
          onPressed: () {},
          child: Text(
            'PLAY',
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                fontSize: 12,
                letterSpacing: 2,
                color: Theme.of(context).iconTheme.color),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            EvaIcons.heart_outline,
          ),
          iconSize: 30,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            EvaIcons.more_horizontal,
          ),
          iconSize: 30,
        ),
        const Spacer(),
        Text(
          'FOLLOWERS $followers',
          style: Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 12),
          textAlign: TextAlign.right,
        ),
      ],
    );
  }
}
