import 'package:flutter/material.dart';
import 'package:flutter_ui_facebook/data/data.dart';
import 'package:flutter_ui_facebook/models/models.dart';
import 'package:flutter_ui_facebook/widget/widgets.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
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
              label: "Notifikasi",
              actions: [
                CircleButtonWidget(
                    icon: Icons.search, iconSize: 30, onPressed: () {})
              ],
            ),
            const SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              sliver: SliverToBoxAdapter(
                child: Text(
                  "Hari Ini",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate(
              (context, index) {
                final User user = onlineUsers[index];
                return NotifikasiWidget(user: user);
              },
              childCount: 2,
            )),
            const SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              sliver: SliverToBoxAdapter(
                child: Text(
                  "Terdahulu",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate(
              (context, index) {
                final User user = onlineUsers[index];
                return NotifikasiWidget(user: user);
              },
              childCount: onlineUsers.length,
            )),
          ],
        ),
      ),
    );
  }
}
