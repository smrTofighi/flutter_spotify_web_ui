import 'package:flutter/material.dart';
import 'package:flutter_spotify_ui/gen/assets.gen.dart';
import 'package:icons_plus/icons_plus.dart';

class CurrentTrack extends StatelessWidget {
  const CurrentTrack({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 84,
      color: Colors.black87,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            TrackInfo(),
            Spacer(),
            PlayerControl(),
            Spacer(),
            MoreControl()
          ],
        ),
      ),
    );
  }
}

class MoreControl extends StatelessWidget {
  const MoreControl({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.devices,
          ),
          iconSize: 20,
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                EvaIcons.volume_up_outline,
              ),
            ),
            Container(
              height: 5,
              width: 70,
              decoration: BoxDecoration(
                color: Colors.grey.shade800,
                borderRadius: BorderRadius.circular(2.5),
              ),
            )
          ],
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.fullscreen_outlined,
          ),
          iconSize: 20,
        ),
      ],
    );
  }
}

class PlayerControl extends StatelessWidget {
  const PlayerControl({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                EvaIcons.shuffle,
              ),
              iconSize: 20,
              padding: EdgeInsets.only(),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                EvaIcons.skip_back_outline,
              ),
              iconSize: 20,
              padding: EdgeInsets.only(),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                EvaIcons.play_circle_outline,
              ),
              iconSize: 20,
              padding: EdgeInsets.only(),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                EvaIcons.skip_forward_outline,
              ),
              iconSize: 20,
              padding: EdgeInsets.only(),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                EvaIcons.repeat,
              ),
              iconSize: 20,
              padding: EdgeInsets.only(),
            ),
          ],
        ),
        const SizedBox(
          height: 4,
        ),
        Row(
          children: [
            Text(
              '0:00',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            SizedBox(
              width: 8,
            ),
            Container(
              height: 5,
              width: MediaQuery.sizeOf(context).width * 0.3,
              decoration: BoxDecoration(
                  color: Colors.grey.shade800,
                  borderRadius: BorderRadius.circular(2.5)),
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              '0:00',
              style: Theme.of(context).textTheme.bodySmall,
            )
          ],
        )
      ],
    );
  }
}

class TrackInfo extends StatelessWidget {
  const TrackInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          Assets.images.cover1.path,
          width: 60,
          height: 60,
          fit: BoxFit.cover,
        ),
        const SizedBox(
          width: 12,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Breathe',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              'Dark Life Note',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: Colors.grey[300], fontSize: 12),
            ),
          ],
        ),
        const SizedBox(
          width: 12,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(EvaIcons.heart_outline),
        )
      ],
    );
  }
}
