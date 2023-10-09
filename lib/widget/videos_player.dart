import 'package:flutter/material.dart';
import 'package:flutter_ui_facebook/config/palette.dart';

import 'package:flutter_ui_facebook/models/models.dart';
import 'package:flutter_ui_facebook/widget/Video.dart';
import 'package:flutter_ui_facebook/widget/post_container.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({
    super.key,
    required this.video,
    required this.story,
  });
  final String story;
  final Post video;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PostHeader(
                    post: video,
                    link: true,
                  ),
                  const SizedBox(
                    height: 6.0,
                  ),
                  Text(video.caption),
                  video.imageUrl != null
                      ? const SizedBox.shrink()
                      : const SizedBox(
                          height: 6,
                        ),
                ],
              ),
            ),
            SizedBox(
                height: Palette.landscape(context)
                    ? Palette.screenHeight(context) * 1.2
                    : Palette.screenHeight(context) * 0.27,
                child: Video()),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: PostStatus(post: video),
            )
          ],
        ),
      ],
    );
  }
}
