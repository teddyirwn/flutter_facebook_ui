import 'package:flutter/material.dart';
import 'package:flutter_ui_facebook/config/palette.dart';
import 'package:flutter_ui_facebook/widget/cached_network_image_widget.dart';
import '../models/models.dart';

class StoriesWidget extends StatelessWidget {
  const StoriesWidget({
    Key? key,
    required this.currentUser,
    required this.stories,
  }) : super(key: key);

  final User currentUser;
  final List<Story> stories;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.white,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
        scrollDirection: Axis.horizontal,
        itemCount: 1 + stories.length,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: StoryCard(
                  isAddStory: true,
                  currentUser: currentUser,
                ));
          }

          final Story story = stories[index - 1];
          return Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.0),
              child: StoryCard(
                story: story,
              ));
        },
      ),
    );
  }
}

class StoryCard extends StatelessWidget {
  final bool isAddStory;
  final User? currentUser;
  final Story? story;

  const StoryCard({
    Key? key,
    this.isAddStory = false,
    this.currentUser,
    this.story,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Container(
              alignment: isAddStory ? Alignment.topCenter : null,
              height: double.infinity,
              width: 110.0,
              child: NetworkImageWidget(
                  image: isAddStory ? currentUser!.imageUrl : story!.imageUrl,
                  fit: isAddStory ? BoxFit.none : BoxFit.cover)),
        ),
        Container(
          width: 110,
          height: double.infinity,
          alignment: Alignment.bottomLeft,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              gradient: Palette.storyGradient),
          child: isAddStory
              ? Container(
                  padding: const EdgeInsets.all(10),
                  height: 75,
                  width: 110,
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12)),
                    color: Colors.grey[300],
                  ),
                  child: const Text(
                    "Buat Cerita",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    story!.user.name,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
        ),
        isAddStory
            ? const Positioned(
                bottom: 50,
                left: 33,
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Palette.facebookBlue,
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ))
            : Positioned(
                top: 8,
                left: 8,
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Palette.facebookBlue,
                    shape: BoxShape.circle,
                  ),
                  padding: EdgeInsets.all(4),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: NetworkImageWidget(
                      image: story!.user.imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
      ],
    );
  }
}
