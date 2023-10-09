import 'package:flutter_ui_facebook/models/users.model.dart';

class Story {
  final User user;
  final String imageUrl;
  final bool isViewe;

  const Story({
    required this.user,
    required this.imageUrl,
    this.isViewe = false,
  });


 
}
