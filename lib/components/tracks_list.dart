import 'package:flutter/material.dart';
import 'package:flutter_spotify_ui/data/data.dart';
import 'package:icons_plus/icons_plus.dart';

class TracksList extends StatelessWidget {
  const TracksList({super.key, required this.tracks});
  final List<Song> tracks;

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: [
        DataColumn(
          label: Text(
            'title'.toUpperCase(),
          ),
        ),
        DataColumn(
          label: Text(
            'artist'.toUpperCase(),
          ),
        ),
        DataColumn(
          label: Text(
            'album'.toUpperCase(),
          ),
        ),
        const DataColumn(
          label: Icon(Icons.access_time),
        ),
      ],
      rows: tracks.map((e) {
        return DataRow(cells: [
          DataCell(
            Text(
              e.title,
              style: TextStyle(color: Theme.of(context).iconTheme.color),
            ),
          ),
          DataCell(
            Text(
              e.artist,
              style: TextStyle(color: Theme.of(context).iconTheme.color),
            ),
          ),
          DataCell(
            Text(
              e.album,
              style: TextStyle(color: Theme.of(context).iconTheme.color),
            ),
          ),
          DataCell(
            Text(
              e.duration,
              style: TextStyle(color: Theme.of(context).iconTheme.color),
            ),
          ),
        ]);
      }).toList(),
    );
  }
}
