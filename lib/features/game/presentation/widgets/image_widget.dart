import 'package:flutter/material.dart';
import 'package:igdb_games/helpers/resize_image.dart';

class ImageWigdet extends StatelessWidget {
  final String image;
  const ImageWigdet({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      'https:${resizeImage(image)}',
      fit: BoxFit.cover,
      errorBuilder: (_, __, ___) => Image.asset(
        'assets/igdb.png',
        fit: BoxFit.cover,
      ),
    );
  }
}
