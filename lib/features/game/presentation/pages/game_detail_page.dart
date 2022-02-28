import 'package:flutter/material.dart';
import 'package:igdb_games/features/game/domain/models/game.dart';
import 'package:igdb_games/features/game/presentation/widgets/game_detail_header.dart';

import 'package:igdb_games/styles/custom_colours.dart';

class GameDetailPage extends StatelessWidget {
  final Game game;
  const GameDetailPage({Key? key, required this.game}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColours.cardColor,
      appBar: GameDetailHeader(image: game.artworks![0].url),
      body: Column(
        children: const [],
      ),
    );
  }
}
