import 'package:flutter/material.dart';

class Palette {
  static const Color scaffold = Color(0xFFF0F2F5);
  static const Color facebookBlue = Color(0xFF1777F2);

  static const LinearGradient createRoomGradient = LinearGradient(
    colors: [Color(0xFF496AE1), Color(0xFFCE48B1)],
  );

  static landscape(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.landscape;
  }

  static const Color online = Color(0xFF4BCB1F);
  static screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static screenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static const LinearGradient storyGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Colors.transparent, Colors.black45],
  );
}
