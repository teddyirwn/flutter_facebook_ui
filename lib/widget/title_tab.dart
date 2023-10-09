import 'package:flutter/material.dart';
import 'package:flutter_ui_facebook/config/palette.dart';

class SliverTabApbar extends StatelessWidget {
  const SliverTabApbar(
      {super.key,
      required this.label,
      this.actions,
      this.bottom,
      this.flexibleSpace,
      this.color});

  final String label;
  final List<Widget>? actions;
  final PreferredSizeWidget? bottom;
  final Widget? flexibleSpace;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      elevation: 0,
      pinned: true,
      backgroundColor: color,
      title: Text(
        label,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 23,
          fontWeight: FontWeight.bold,
        ),
      ),
      flexibleSpace: flexibleSpace,
      actions: actions,
      bottom: bottom,
    );
  }
}
