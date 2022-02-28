import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:igdb_games/features/game_list/domain/bloc/game_bloc.dart';
import 'package:igdb_games/features/game_list/domain/bloc/game_event.dart';
import 'package:igdb_games/features/game_list/domain/bloc/game_state.dart';
import 'package:igdb_games/features/game_list/domain/models/game.dart';

class GameListPage extends StatelessWidget {
  const GameListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Game list')),
      body: BlocBuilder(
        bloc: Get.find<GameBloc>()..add(FetchGamesEvent()),
        builder: (context, state) {
          if (state is GameLoadingState) {
            return const Text('Loading');
          }
          if (state is GameSuccessState && state.gameList != null) {
            return ListView.builder(
              itemBuilder: (context, index) => GameCard(
                game: (Get.find<GameBloc>().state as GameSuccessState).gameList![index],
              ),
              itemCount: state.gameList!.length,
            );
          }
          return Container();
        },
      ),
    );
  }
}

class GameCard extends StatelessWidget {
  final Game game;
  const GameCard({Key? key, required this.game}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(game.toString()),
    );
  }
}
