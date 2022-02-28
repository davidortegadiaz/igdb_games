import 'package:flutter/widgets.dart';

class CustomColours {
  static const cardColor = Color.fromRGBO(147, 225, 216, 1);
  static const gradientFirst = Color.fromRGBO(35, 106, 242, 1);
  static const gradientSecond = Color.fromRGBO(52, 236, 225, 1);
  static const gradientThird = Color.fromRGBO(79, 255, 192, 1);
  static const gradientFourth = Color.fromRGBO(84, 222, 231, 1);
  static const gradientFifth = Color.fromRGBO(182, 255, 124, 1);

  static const LinearGradient gradient = LinearGradient(
    colors: [
      gradientFirst,
      gradientSecond,
      gradientThird,
      gradientFourth,
      gradientFifth,
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
