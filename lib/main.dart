import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:igdb_games/di/injector.dart';
import 'package:igdb_games/features/game/presentation/pages/game_list_page.dart';

import 'features/game/presentation/pages/game_list_page.dart';

void main() {
  injection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
      ),
      debugShowCheckedModeBanner: false,
      home: const GameListPage(),
    );
  }
}
