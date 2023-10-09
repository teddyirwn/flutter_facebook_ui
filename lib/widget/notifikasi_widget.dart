import 'package:flutter/material.dart';
import 'package:flutter_ui_facebook/models/models.dart';
import 'package:flutter_ui_facebook/widget/widgets.dart';

class NotifikasiWidget extends StatelessWidget {
  const NotifikasiWidget({super.key, required this.user});
  final User user;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.blue[50],
          height: 100.0,
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                width: 70,
                height: 70,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: NetworkImageWidget(
                    image: user.imageUrl,
                  ),
                ),
              ),
              const SizedBox(width: 15.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                        text: TextSpan(
                      style: DefaultTextStyle.of(context).style,
                      children: [
                        TextSpan(
                          text: user.name,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: ' ' + user.komen,
                        ),
                      ],
                    )),
                    Text(
                      user.time,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Icon(Icons.more_horiz)
            ],
          ),
        ),
        const Positioned(
          left: 55,
          bottom: 23,
          child: CircleAvatar(
            radius: 15,
            backgroundColor: Colors.red,
            child: Icon(
              Icons.videocam_rounded,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
