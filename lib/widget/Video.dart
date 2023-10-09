import 'package:flutter/material.dart';
import 'package:flutter_ui_facebook/config/palette.dart';
import 'package:flutter_ui_facebook/widget/cached_network_image_widget.dart';

class Video extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            width: Palette.screenWidth(context),
            child: const NetworkImageWidget(
              image:
                  'https://www.intel.com/content/dam/www/central-libraries/us/en/images/2022-11/cloud-tv-finops-journey-video-thumbnail.jpg',
              fit: BoxFit.cover,
            ),
          ),
          const Center(
            child: Icon(
              Icons.play_circle_fill,
              size: 100.0,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
