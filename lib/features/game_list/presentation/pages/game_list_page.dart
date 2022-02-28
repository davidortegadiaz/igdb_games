import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:igdb_games/features/game_list/domain/bloc/game_bloc.dart';
import 'package:igdb_games/features/game_list/domain/bloc/game_event.dart';
import 'package:igdb_games/features/game_list/domain/bloc/game_state.dart';
import 'package:igdb_games/features/game_list/presentation/widgets/game_list_item.dart';
import 'package:igdb_games/styles/custom_colours.dart';

class GameListPage extends StatelessWidget {
  const GameListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(gradient: CustomColours.gradient),
      child: Scaffold(
        body: SafeArea(
          child: BlocBuilder(
            bloc: Get.find<GameBloc>()..add(FetchGamesEvent()),
            builder: (context, state) {
              if (state is GameLoadingState) {
                return const Text('Loading');
              }
              if (state is GameSuccessState && state.gameList != null) {
                return ListView.builder(
                  shrinkWrap: true,
                  itemBuilder: (context, index) => GameListItem(
                    game: (Get.find<GameBloc>().state as GameSuccessState).gameList![index],
                  ),
                  itemCount: state.gameList!.length,
                );
              }
              return Container();
            },
          ),
        ),
      ),
    );
  }
}
