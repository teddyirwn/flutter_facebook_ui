import 'package:flutter/material.dart';
import 'package:flutter_ui_facebook/data/data.dart';
import 'package:flutter_ui_facebook/widget/widgets.dart';

class CreatedPostUserWidget extends StatelessWidget {
  const CreatedPostUserWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 10),
      color: Colors.white,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: SizedBox(
              height: 40,
              width: 40,
              child: NetworkImageWidget(
                image: currentUser.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Apa yang Anda pikirkan?",
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50))),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.photo_library_rounded,
              color: Colors.greenAccent[400],
              size: 35,
            ),
          )
        ],
      ),
    );
  }
}
