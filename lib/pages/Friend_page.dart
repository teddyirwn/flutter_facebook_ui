import 'package:flutter/material.dart';
import 'package:flutter_ui_facebook/data/data.dart';
import 'package:flutter_ui_facebook/models/models.dart';

import 'package:flutter_ui_facebook/widget/widgets.dart';

import '../config/palette.dart';

class FriendPage extends StatefulWidget {
  const FriendPage({super.key});

  @override
  State<FriendPage> createState() => _FriendPageState();
}

class _FriendPageState extends State<FriendPage> {
  Future<void> _refreshData() async {
    await Future.delayed(const Duration(seconds: 2));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: RefreshIndicator(
        onRefresh: _refreshData,
        child: CustomScrollView(
          slivers: <Widget>[
            SliverTabApbar(
              color: Colors.white,
              label: "Teman",
              actions: [
                CircleButtonWidget(
                  icon: Icons.search,
                  iconSize: 30,
                  onPressed: () {},
                )
              ],
            ),
            SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.only(left: 12, right: 12, bottom: 10),
                color: Colors.white,
                child: const Row(
                  children: [
                    ContainerTab(
                      label: "Saran",
                    ),
                    ContainerTab(
                      label: "Teman Anda",
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12),
                color: Colors.white,
                child: Column(
                  children: [
                    const Divider(
                      color: Colors.black54,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Permintaan Pertemanan",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextButton(
                            onPressed: () {}, child: const Text("Lihat Semua"))
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    final AddUser user = userAdd[index];
                    return AddFriendWidget(
                      user: user,
                      subtitle: Column(
                        children: [
                          SubtitleListle(user: user),
                          Row(
                            children: [
                              const Expanded(
                                child: ButtonAdd(
                                  color: Colors.white,
                                  bgColor: Palette.facebookBlue,
                                  label: "Konfirmasi",
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: ButtonAdd(
                                  color: Colors.black,
                                  bgColor: Colors.blueGrey[100],
                                  label: "Hapus",
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  },
                  childCount: 4,
                ),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              sliver: SliverToBoxAdapter(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Lihat Semua",
                    style: TextStyle(fontSize: 16),
                  ),
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.blueGrey[100],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
            ),
            const SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              sliver: SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Divider(
                      color: Colors.black54,
                    ),
                    Text("Orang yang mungkin Anda Kenal",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
                  final AddUser user = userAdd[index];
                  return AddFriendWidget(
                    user: user,
                    subtitle: Palette.landscape(context)
                        ? Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SubtitleListle(user: user),
                              Row(
                                children: [
                                  const Expanded(
                                    child: ButtonAdd(
                                        color: Colors.white,
                                        bgColor: Palette.facebookBlue,
                                        label: 'Tambah jadi Teman'),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: ButtonAdd(
                                        color: Colors.black,
                                        bgColor: Colors.blueGrey[100],
                                        label: 'Hapus'),
                                  ),
                                ],
                              ),
                            ],
                          )
                        : Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SubtitleListle(user: user),
                              SizedBox(
                                width: MediaQuery.of(context).size.width,
                                child: const ButtonAdd(
                                    color: Colors.white,
                                    bgColor: Palette.facebookBlue,
                                    label: 'Tambah jadi Teman'),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width,
                                child: ButtonAdd(
                                    color: Colors.black,
                                    bgColor: Colors.blueGrey[100],
                                    label: 'Hapus'),
                              ),
                            ],
                          ),
                  );
                }, childCount: userAdd.length),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ContainerTab extends StatelessWidget {
  const ContainerTab({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          label,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.grey[300],
            foregroundColor: Colors.black,
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            )),
      ),
    );
  }
}
