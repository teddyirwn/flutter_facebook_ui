import 'package:flutter/material.dart';
import 'package:flutter_ui_facebook/models/models.dart';
import 'widgets.dart';

class AddFriendWidget extends StatelessWidget {
  const AddFriendWidget({super.key, required this.user, this.subtitle});
  final Widget? subtitle;
  final AddUser user;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Row(
        children: [
          SizedBox(
            width: 90,
            height: 90,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: NetworkImageWidget(
                image: user.imageUrl[0],
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
              child: ListTile(
            title: Text(
              user.name,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            subtitle: subtitle,
          )),
        ],
      ),
      Positioned(
        top: 0,
        right: 0,
        child: Text(user.time),
      )
    ]);
  }
}

class SubtitleListle extends StatelessWidget {
  const SubtitleListle({super.key, required this.user});
  final AddUser user;

  @override
  Widget build(BuildContext context) {
    return user.cek != true
        ? SizedBox(
            height: 40,
            width: double.infinity,
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                Positioned(
                  left: 15,
                  child: ContainerAdd(
                    image: user.imageUrl[1],
                  ),
                ),
                ContainerAdd(
                  image: user.imageUrl[2],
                ),
                Positioned(
                  top: 4,
                  left: 45,
                  child: Text(
                    "${user.label}",
                    style: TextStyle(fontSize: 15),
                  ),
                )
              ],
            ),
          )
        : SizedBox(
            height: 10,
          );
  }
}

class ContainerAdd extends StatelessWidget {
  const ContainerAdd({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      width: 28,
      height: 28,
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(50)),
          child: NetworkImageWidget(
            image: image,
            fit: BoxFit.cover,
          )),
    );
  }
}

class ButtonAdd extends StatelessWidget {
  const ButtonAdd(
      {super.key,
      required this.color,
      required this.bgColor,
      required this.label});
  final Color color;
  final Color? bgColor;
  final String label;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
          padding: EdgeInsets.all(10),
          foregroundColor: color,
          backgroundColor: bgColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          )),
      onPressed: () {},
      child: Text(
        label,
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}
