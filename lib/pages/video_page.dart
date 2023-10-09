import 'package:flutter/material.dart';
import 'package:flutter_ui_facebook/config/palette.dart';
import 'package:flutter_ui_facebook/data/data.dart';
import 'package:flutter_ui_facebook/models/models.dart';

import 'package:flutter_ui_facebook/widget/widgets.dart';

class VideoPage extends StatefulWidget {
  const VideoPage({Key? key}) : super(key: key);

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: DefaultTabController(
        length: 5,
        initialIndex: 0,
        child: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
                  SliverTabApbar(
                    color: Colors.white,
                    label: "Video",
                    actions: [
                      CircleButtonWidget(
                        icon: Icons.person,
                        iconSize: 28,
                        onPressed: () {},
                      ),
                      CircleButtonWidget(
                        icon: Icons.search,
                        iconSize: 28,
                        onPressed: () {},
                      ),
                    ],
                    bottom: PreferredSize(
                      preferredSize: Size.fromHeight(50),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: TabBar(
                          unselectedLabelColor: Colors.black,
                          indicatorPadding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 8),
                          labelColor: Palette.facebookBlue,
                          isScrollable: true,
                          indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.lightBlue[50],
                          ),
                          tabs: const [
                            Tab(
                                child: TabVideos(
                              label: "Untuk Anda",
                            )),
                            Tab(
                              child: TabVideos(
                                label: "Siaran Langsung",
                              ),
                            ),
                            Tab(
                              child: TabVideos(
                                label: "Game",
                              ),
                            ),
                            Tab(
                              child: TabVideos(
                                label: "Real",
                              ),
                            ),
                            Tab(
                              child: TabVideos(
                                label: "Mengikuti",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
            body: TabBarView(
              children: [
                ListView.builder(
                  itemCount: posts.length,
                  itemBuilder: (context, index) {
                    final Post video = posts[index];
                    final String story = stories[index].imageUrl;

                    return VideoWidget(
                      video: video,
                      story: story,
                    );
                  },
                ),
                ListView.builder(
                  itemCount: posts.length,
                  itemBuilder: (context, index) {
                    final Post video = posts[index];
                    final String story = stories[index].imageUrl;

                    return VideoWidget(
                      video: video,
                      story: story,
                    );
                  },
                ),
                ListView.builder(
                  itemCount: posts.length,
                  itemBuilder: (context, index) {
                    final Post video = posts[index];
                    final String story = stories[index].imageUrl;

                    return VideoWidget(
                      video: video,
                      story: story,
                    );
                  },
                ),
                ListView.builder(
                  itemCount: posts.length,
                  itemBuilder: (context, index) {
                    final Post video = posts[index];
                    final String story = stories[index].imageUrl;

                    return VideoWidget(
                      video: video,
                      story: story,
                    );
                  },
                ),
                ListView.builder(
                  itemCount: posts.length,
                  itemBuilder: (context, index) {
                    final Post video = posts[index];
                    final String story = stories[index].imageUrl;

                    return VideoWidget(
                      video: video,
                      story: story,
                    );
                  },
                ),
              ],
            )),
      ),
    );
  }
}

class TabVideos extends StatelessWidget {
  const TabVideos({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Text(
          label,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ));
  }
}
