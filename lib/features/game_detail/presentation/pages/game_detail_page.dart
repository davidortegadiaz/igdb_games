import 'package:flutter/material.dart';
import 'package:igdb_games/features/game_detail/presentation/widgets/game_detail_header.dart';
import 'package:igdb_games/features/game_list/domain/models/game.dart';
import 'package:igdb_games/styles/custom_colours.dart';

class GameDetailPage extends StatelessWidget {
  final Game game;
  const GameDetailPage({Key? key, required this.game}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GameDetailHeader(image: game.artworks![0].url),
      body: Column(
        children: [
          Container(
            color: CustomColours.cardColor,
          ),
        ],
      ),
    );
  }
}
