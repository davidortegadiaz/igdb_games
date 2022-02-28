import 'package:flutter/widgets.dart';

class CustomColours {
  static const cardColor = Color.fromRGBO(147, 225, 216, 1);
  static const gradientFirst = Color.fromRGBO(35, 106, 242, 0);
  static const gradientSecond = Color.fromRGBO(52, 236, 225, 0);
  static const gradientThird = Color.fromRGBO(79, 255, 192, 0);
  static const gradientFourth = Color.fromRGBO(84, 222, 231, 0);
  static const gradientFifth = Color.fromRGBO(182, 255, 124, 0);

  static const LinearGradient gradient = LinearGradient(
      colors: [
        gradientFirst,
        gradientSecond,
        gradientThird,
        gradientFourth,
        gradientFifth,
      ],
      begin: FractionalOffset(0.0, 0.0),
      end: FractionalOffset(0.5, 0.0),
      stops: [0.0, 0.2, 0.5, 0.8, 1.0],
      tileMode: TileMode.clamp);
}
