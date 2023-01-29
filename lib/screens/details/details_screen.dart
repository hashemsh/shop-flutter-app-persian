import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app_flutter/constants.dart';
import 'package:shop_app_flutter/models/Product.dart';
import 'package:shop_app_flutter/screens/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: product.color,
        appBar: buildAppBar(),
        body: Body(
          product: product,
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      actions: [
        IconButton(
          onPressed: (() {}),
          icon: SvgPicture.asset(
            "assets/icons/search.svg",
            color: Colors.white,
          ),
        ),
        IconButton(
          onPressed: (() {}),
          icon: SvgPicture.asset(
            "assets/icons/cart.svg",
            color: Colors.white,
          ),
        ),
        const SizedBox(
          width: kDefaultPadding / 2,
        )
      ],
    );
  }
}
