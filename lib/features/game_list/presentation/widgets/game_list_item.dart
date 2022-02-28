import 'package:flutter/widgets.dart';
import 'package:igdb_games/features/game_list/domain/models/game.dart';

class GameListItem extends StatelessWidget {
  final Game game;
  const GameListItem({Key? key, required this.game}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack();
  }
}
