import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ui_facebook/config/palette.dart';
import 'package:flutter_ui_facebook/data/data.dart';
import 'package:flutter_ui_facebook/models/models.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widget/widgets.dart';

class MarketPlasePage extends StatefulWidget {
  const MarketPlasePage({super.key});

  @override
  State<MarketPlasePage> createState() => _MarketPlasePageState();
}

class _MarketPlasePageState extends State<MarketPlasePage> {
  @override
  void initState() {
    super.initState();
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  }

  @override
  void dispose() {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    super.dispose();
  }

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
              label: "Marketplase",
              actions: [
                CircleButtonWidget(
                  icon: Icons.person,
                  iconSize: 30,
                  onPressed: () {},
                ),
                CircleButtonWidget(
                  icon: Icons.search,
                  iconSize: 30,
                  onPressed: () {},
                ),
              ],
            ),
            SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                color: Colors.white,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TabContainerMarket(
                      icon: FontAwesomeIcons.edit,
                      label: "Jual",
                    ),
                    TabContainerMarket(
                      icon: FontAwesomeIcons.bars,
                      label: "Kategori",
                    ),
                  ],
                ),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              sliver: SliverToBoxAdapter(
                child: Column(
                  children: [
                    Divider(
                      color: Colors.black54,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Pilihan Hari ini",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                Icon(Icons.location_pin),
                                Text("Kota Pontianak")
                              ],
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ),
            SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final Product prod = product[index];
                  return ProductGrid(prod: prod);
                },
                childCount: product.length,
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  childAspectRatio: 0.8,
                  mainAxisSpacing: 10),
            )
          ],
        ),
      ),
    );
  }
}

class TabContainerMarket extends StatelessWidget {
  const TabContainerMarket(
      {super.key, required this.icon, required this.label});

  final IconData? icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Palette.screenWidth(context) * 0.46,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            backgroundColor: Colors.grey[300],
            foregroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 20,
            ),
            const SizedBox(
              width: 6,
            ),
            Text(
              label,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
