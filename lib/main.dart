import 'dart:io';

import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_spotify_ui/components/current_track.dart';
import 'package:flutter_spotify_ui/components/side_menu.dart';
import 'package:flutter_spotify_ui/data/data.dart';
import 'package:flutter_spotify_ui/screens/play_list_screen.dart';

void main() async {

  runApp(const MyApp());
  if (!kIsWeb &&
      (Platform.isMacOS || Platform.isWindows || Platform.isWindows)) {
         doWhenWindowReady(() {
    const initialSize = Size(1280, 720);
    const minSize = Size(600, 800);
    const maxSize = Size(1920, 1080);
    appWindow.maxSize = maxSize;

    appWindow.minSize = minSize;
    appWindow.size = initialSize; //default size
    appWindow.show();
  });
      }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Spotify UI',
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
        scaffoldBackgroundColor: const Color(0xFF121212),
        primaryColor: Colors.black,
        cardColor: const Color(0xFF121212),
        primaryColorDark: const Color(0xFF1DB954),
        iconTheme: const IconThemeData().copyWith(color: Colors.white),
        fontFamily: 'Montserrat',
        textTheme: TextTheme(
          displayMedium: const TextStyle(
            color: Colors.white,
            fontSize: 32.0,
            fontWeight: FontWeight.bold,
          ),
          headlineMedium: TextStyle(
            fontSize: 12.0,
            color: Colors.grey[300],
            fontWeight: FontWeight.w500,
            letterSpacing: 2.0,
          ),
          bodyLarge: TextStyle(
            color: Colors.grey[300],
            fontSize: 14.0,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.0,
          ),
          bodyMedium: TextStyle(
            color: Colors.grey[300],
            letterSpacing: 1.0,
          ),
        ),
      ),
      home: const Shell(),
    );
  }
}

class Shell extends StatelessWidget {
  const Shell({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
               const SideMenu(),
             Expanded(
               child: PlayListScreen(
                playlist: lofihiphopPlaylist,
               ),
             )
              ],
            ),
          ),
         const CurrentTrack()
        ],
      ),
    );
  }
}
