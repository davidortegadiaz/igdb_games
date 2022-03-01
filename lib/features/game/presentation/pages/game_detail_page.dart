import 'package:flutter/material.dart';
import 'package:igdb_games/features/game/domain/models/game.dart';
import 'package:igdb_games/features/game/domain/models/genre.dart';
import 'package:igdb_games/features/game/presentation/widgets/game_detail_header.dart';
import 'package:igdb_games/features/game/presentation/widgets/youtube_player.dart';

import 'package:igdb_games/styles/custom_colours.dart';
import 'package:igdb_games/styles/fonts.dart';

class GameDetailPage extends StatelessWidget {
  final Game game;
  const GameDetailPage({Key? key, required this.game}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColours.cardColor,
      appBar: GameDetailHeader(image: game.artworks[0].url),
      body: SingleChildScrollView(
        child: Builder(builder: (context) {
          return Padding(
            padding: const EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  game.name,
                  style: Styles.detailTitle,
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Rate: ${game.rating.toInt()}',
                      style: Styles.normal,
                    ),
                    Text(
                      '${game.ratingCount} People score',
                      style: Styles.normal,
                    )
                  ],
                ),
                const SizedBox(height: 10),
                Text(
                  game.storyline,
                  style: Styles.storyline,
                ),
                const SizedBox(height: 10),
                MyYoutubePlayer(videoId: game.videos[0].videoId),
                const SizedBox(height: 20),
                Text(
                  'Genres',
                  style: Styles.storyline,
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    for (Genre genre in game.genres) ...[
                      Text(
                        genre.name,
                        style: Styles.normal,
                      ),
                    ],
                  ],
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
