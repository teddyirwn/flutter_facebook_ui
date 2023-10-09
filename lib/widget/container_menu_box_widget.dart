import 'package:flutter/material.dart';

class ContainerMenuBox extends StatelessWidget {
  const ContainerMenuBox({
    super.key,
    required this.image,
    required this.label,
  });
  final String image;
  final String label;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          alignment: Alignment.centerLeft,
        ),
        onPressed: () {},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              image,
              width: 35,
            ),
            Text(
              label,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ));
  }
}
