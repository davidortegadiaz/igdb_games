import 'package:flutter/material.dart';
import 'package:igdb_games/helpers/resize_image.dart';

class CardItemHeader extends StatelessWidget {
  final String url;
  const CardItemHeader({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      width: MediaQuery.of(context).size.width - 30,
      height: MediaQuery.of(context).size.height * .2,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: SizedBox.fromSize(
          size: const Size.fromRadius(20),
          child: Image.network('https:${resizeImage(url)}', fit: BoxFit.cover),
        ),
      ),
    );
  }
}
