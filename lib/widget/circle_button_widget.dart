import 'package:flutter/material.dart';

class CircleButtonWidget extends StatelessWidget {
  final IconData icon;
  final double iconSize;
  final Function()? onPressed;

  const CircleButtonWidget(
      {super.key,
      required this.icon,
      required this.iconSize,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        shape: BoxShape.circle,
      ),
      child: IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            color: Colors.black,
            size: iconSize,
          )),
    );
  }
}
