import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:igdb_games/features/game/domain/models/game.dart';
import 'package:igdb_games/features/game/presentation/pages/game_detail_page.dart';
import 'package:igdb_games/features/game/presentation/widgets/card_item_header.dart';
import 'package:igdb_games/styles/custom_colours.dart';
import 'package:igdb_games/styles/fonts.dart';

class GameListItem extends StatelessWidget {
  final Game game;
  const GameListItem({Key? key, required this.game}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: CustomColours.cardColor,
        ),
        margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        padding: const EdgeInsets.only(bottom: 10),
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height * .4,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CardItemHeader(url: game.artworks![0].url),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Text(
                game.name!,
                style: Styles.cardTitle,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [Text('Rate: ${game.rating!.toInt()}'), Text('${game.ratingCount} People score')],
              ),
            )
          ],
        ),
      ),
      onTap: () => Get.to(
        () => GameDetailPage(
          game: game,
        ),
      ),
    );
  }
}
