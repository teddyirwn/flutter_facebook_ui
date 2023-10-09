import 'package:flutter/material.dart';
import 'package:flutter_ui_facebook/config/palette.dart';
import 'package:flutter_ui_facebook/data/data.dart';
import 'package:flutter_ui_facebook/widget/dropdown_container_menu.dart';
import 'package:flutter_ui_facebook/widget/widgets.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.blueGrey[50],
      child: CustomScrollView(
        slivers: <Widget>[
          SliverTabApbar(
            color: Colors.blueGrey[50],
            label: "Menu",
            actions: [
              CircleButtonWidget(
                icon: Icons.settings,
                iconSize: 25,
                onPressed: () {},
              ),
              CircleButtonWidget(
                icon: Icons.search,
                iconSize: 25,
                onPressed: () {},
              ),
            ],
          ),
          SliverToBoxAdapter(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: SizedBox(
                    height: 40,
                    width: 40,
                    child: NetworkImageWidget(
                      image: currentUser.imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                title: Text(
                  currentUser.name,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: const Text('Lihat Profile Anda'),
              ),
              const Divider(),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                child: Text(
                  "Semua Pintasan",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ]),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            sliver: SliverGrid(
                delegate: SliverChildBuilderDelegate((context, index) {
                  return ContainerMenuBox(
                      image: buttonBox[index]['image'],
                      label: buttonBox[index]['name']);
                }, childCount: buttonBox.length),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: Palette.screenWidth(context) * 0.0056,
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                )),
          ),
          SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 18),
              sliver: SliverToBoxAdapter(
                child: Column(
                  children: [
                    SizedBox(
                      width: Palette.screenWidth(context),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Lihat Selengkapnya",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 12),
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.blueGrey[100],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
                    const Divider(
                      color: Colors.black54,
                    ),
                    DropdownMenuContainer(icon: Icons.help, item: itemsMenu1),
                    const Divider(
                      color: Colors.black54,
                    ),
                    DropdownMenuContainer(
                      icon: Icons.settings,
                      item: itemsMenu2,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: Palette.screenWidth(context),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Keluar",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 12),
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.blueGrey[100],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
