import 'package:flutter_ui_facebook/models/models.dart';

class Videos {
  final User user;
  final String caption;
  final String timeAgo;
  final String? videosUrl;
  final int likes;
  final int comments;
  final int shares;

  Videos({
    required this.user,
    required this.caption,
    required this.timeAgo,
    required this.videosUrl,
    required this.likes,
    required this.comments,
    required this.shares,
  });
}
