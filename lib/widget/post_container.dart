import 'package:flutter/material.dart';
import 'package:flutter_ui_facebook/config/palette.dart';
import 'package:flutter_ui_facebook/models/models.dart';
import 'package:flutter_ui_facebook/widget/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PostContainer extends StatelessWidget {
  const PostContainer({super.key, required this.post});

  final Post post;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5.0),
      padding: EdgeInsets.symmetric(
        vertical: 8.0,
      ),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                PostHeader(post: post),
                const SizedBox(
                  height: 6.0,
                ),
                Text(post.caption),
                post.imageUrl != null
                    ? const SizedBox.shrink()
                    : const SizedBox(
                        height: 6,
                      ),
              ],
            ),
          ),
          post.imageUrl != null
              ? Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: NetworkImageWidget(
                    image: "${post.imageUrl}",
                    fit: BoxFit.fill,
                  ))
              : const SizedBox.shrink(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: PostStatus(post: post),
          ),
        ],
      ),
    );
  }
}

class PostHeader extends StatelessWidget {
  const PostHeader({
    super.key,
    required this.post,
    this.link = false,
  });

  final Post post;

  final bool link;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 40,
          height: 40,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: NetworkImageWidget(
              image: post.user.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          width: 8.0,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    post.user.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  link
                      ? TextButton(
                          style: TextButton.styleFrom(),
                          child: Text("•  Ikuti"),
                          onPressed: () {},
                        )
                      : SizedBox.shrink(),
                ],
              ),
              Row(
                children: [
                  Text(
                    "${post.timeAgo} • ",
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 12.0,
                    ),
                  ),
                  Icon(
                    Icons.public,
                    size: 12.0,
                    color: Colors.grey[600],
                  )
                ],
              ),
            ],
          ),
        ),
        IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.close_rounded))
      ],
    );
  }
}

class PostStatus extends StatefulWidget {
  const PostStatus({super.key, required this.post});

  final Post post;

  @override
  State<PostStatus> createState() => _PostStatusState();
}

class _PostStatusState extends State<PostStatus> {
  bool isSelect = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(4.0),
              decoration: const BoxDecoration(
                color: Palette.facebookBlue,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.thumb_up,
                size: 10,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              width: 5.0,
            ),
            Expanded(
              child: Text(
                "${widget.post.likes}",
                style: TextStyle(color: Colors.grey[600]),
              ),
            ),
            Text(
              "${widget.post.comments} Komentar • ",
              style: TextStyle(color: Colors.grey[600]),
            ),
            Text(
              "${widget.post.shares} kali dibagikan",
              style: TextStyle(color: Colors.grey[600]),
            ),
          ],
        ),
        const Divider(),
        SizedBox(
          width: Palette.screenWidth(context),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _PostButton(
                icon:
                    isSelect ? Icons.thumb_up_rounded : Icons.thumb_up_outlined,
                color: isSelect ? Palette.facebookBlue : null,
                label: "Suka",
                onPressed: () {
                  setState(() {
                    isSelect = !isSelect;
                  });
                },
              ),
              _PostButton(
                icon: FontAwesomeIcons.comment,
                label: "Komentar",
                onPressed: () {},
              ),
              _PostButton(
                icon: FontAwesomeIcons.shareFromSquare,
                label: "Bagikan",
                onPressed: () {},
              ),
            ],
          ),
        )
      ],
    );
  }
}

class _PostButton extends StatelessWidget {
  const _PostButton({
    super.key,
    required this.icon,
    this.onPressed,
    required this.label,
    this.color,
  });

  final IconData icon;
  final Function()? onPressed;
  final String label;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Material(
        color: Colors.white,
        child: Container(
            height: 40,
            margin: EdgeInsets.symmetric(
                horizontal: Palette.landscape(context) ? 60 : 10),
            child: Row(
              children: [
                Icon(
                  icon,
                  size: 27,
                  color: color,
                ),
                const SizedBox(
                  width: 5.0,
                ),
                Text(
                  label,
                  style: TextStyle(color: color),
                ),
              ],
            )),
      ),
    );
  }
}
