import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../pages/screen.dart';
import '../config/palette.dart';
import '../widget/circle_button_widget.dart';

class TabBarPage extends StatefulWidget {
  const TabBarPage({super.key});

  @override
  State<TabBarPage> createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> {
  int selectIndex = 0;

  void _onTapTabBar(int index) {
    setState(() {
      selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.5,
          backgroundColor: Colors.white,
          title: selectIndex == 0
              ? const Text(
                  "facebook",
                  style: TextStyle(
                    color: Palette.facebookBlue,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  ),
                )
              : null,
          toolbarHeight: selectIndex == 0 ? null : 18,
          actions: selectIndex == 0
              ? [
                  CircleButtonWidget(
                    icon: Icons.add,
                    iconSize: 28.0,
                    onPressed: () {},
                  ),
                  CircleButtonWidget(
                    icon: Icons.search,
                    iconSize: 28.0,
                    onPressed: () {},
                  ),
                  CircleButtonWidget(
                    icon: FontAwesomeIcons.facebookMessenger,
                    iconSize: 28.0,
                    onPressed: () {},
                  ),
                ]
              : null,
          bottom: TabBar(
            indicatorPadding: EdgeInsets.symmetric(horizontal: 5.0),
            onTap: _onTapTabBar,
            tabs: <Widget>[
              Tab(
                icon: selectIndex == 0
                    ? const Icon(
                        FontAwesomeIcons.house,
                        size: 23,
                        color: Palette.facebookBlue,
                      )
                    : Image.asset(
                        'assets/icons/home.png',
                        width: 23,
                      ),
              ),
              Tab(
                  icon: selectIndex == 1
                      ? Image.asset(
                          'assets/icons/tv_video.png',
                          width: 25,
                          color: Palette.facebookBlue,
                        )
                      : Icon(
                          Icons.ondemand_video_rounded,
                          size: 28,
                        )),
              Tab(
                icon: selectIndex == 2
                    ? const Icon(
                        Icons.supervisor_account_rounded,
                        size: 30,
                        color: Palette.facebookBlue,
                      )
                    : const Icon(
                        Icons.supervisor_account_outlined,
                        size: 30,
                      ),
              ),
              Tab(
                icon: selectIndex == 3
                    ? const Icon(
                        Icons.storefront_rounded,
                        size: 25,
                        color: Palette.facebookBlue,
                      )
                    : const Icon(
                        Icons.storefront_outlined,
                        size: 25,
                      ),
              ),
              Tab(
                icon: selectIndex == 4
                    ? const Icon(
                        FontAwesomeIcons.solidBell,
                        color: Palette.facebookBlue,
                        size: 25,
                      )
                    : const Icon(
                        FontAwesomeIcons.bell,
                        size: 25,
                      ),
              ),
              Tab(
                icon: Icon(
                  Icons.menu_rounded,
                  color: selectIndex == 5 ? Palette.facebookBlue : null,
                  size: 25,
                ),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            HomePage(),
            VideoPage(),
            FriendPage(),
            MarketPlasePage(),
            NotificationPage(),
            MenuPage(),
          ],
        ),
      ),
    );
  }
}
