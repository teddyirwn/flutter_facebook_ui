import 'package:flutter/material.dart';
import 'package:flutter_ui_facebook/config/palette.dart';
import 'package:flutter_ui_facebook/models/add_user.dart';
import 'package:flutter_ui_facebook/widget/add_friend_widget.dart';
import 'package:flutter_ui_facebook/widget/widgets.dart';

class AddFriendWidget2 extends StatelessWidget {
  const AddFriendWidget2({super.key, required this.user});
  final AddUser user;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
        Expanded(
            child: ListTile(
          title: Text(
            user.name,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SubtitleListle(user: user),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ButtonAdd(
                    color: Colors.white,
                    bgColor: Palette.facebookBlue,
                    label: 'Tambah jadi Teman'),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: ButtonAdd(
                    color: Colors.black,
                    bgColor: Colors.blueGrey[100],
                    label: 'Hapus'),
              ),
            ],
          ),
        ))
      ],
    );
  }
}
