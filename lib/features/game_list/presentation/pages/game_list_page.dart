import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:igdb_games/features/game_list/domain/bloc/game_bloc.dart';
import 'package:igdb_games/features/game_list/domain/bloc/game_event.dart';
import 'package:igdb_games/features/game_list/domain/bloc/game_state.dart';
import 'package:igdb_games/features/game_list/presentation/widgets/game_list_item.dart';
import 'package:igdb_games/styles/custom_colours.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class GameListPage extends StatelessWidget {
  const GameListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(gradient: CustomColours.gradient),
      child: Scaffold(
        body: SafeArea(
          child: RefreshIndicator(
            onRefresh: () async => Get.find<GameBloc>().add(FetchGamesEvent()),
            child: BlocBuilder(
              bloc: Get.find<GameBloc>()..add(FetchGamesEvent()),
              builder: (context, state) {
                if (state is GameLoadingState) {
                  return Center(
                    child: LoadingAnimationWidget.bouncingBall(
                      color: Colors.white,
                      size: 200,
                    ),
                  );
                }
                if (state is GameSuccessState && state.gameList != null) {
                  return ListView.builder(
                    physics: const AlwaysScrollableScrollPhysics(),
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
      ),
    );
  }
}
