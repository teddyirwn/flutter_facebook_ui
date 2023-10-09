import 'package:flutter/material.dart';
import 'package:flutter_ui_facebook/models/models.dart';
import 'package:flutter_ui_facebook/widget/widgets.dart';

class ProductGrid extends StatelessWidget {
  const ProductGrid({super.key, required this.prod});
  final Product prod;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.grey,
          width: 200,
          height: 200,
          child: NetworkImageWidget(
            image: prod.imgUrl,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 8),
          child: SizedBox(
            width: 180,
            child: Text(
              "Rp ${prod.price}   •   ${prod.name}",
              maxLines: 1,
              textAlign: TextAlign.left,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ],
    );
  }
}
