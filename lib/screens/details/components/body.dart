import 'package:flutter/material.dart';
import 'package:shop_app_flutter/constants.dart';
import 'package:shop_app_flutter/models/Product.dart';
import 'package:shop_app_flutter/screens/details/components/cart_counter.dart';
import 'package:shop_app_flutter/screens/details/components/color_and_size.dart';
import 'package:shop_app_flutter/screens/details/components/description.dart';
import 'package:shop_app_flutter/screens/details/components/product_details_header.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TextTheme theme = Theme.of(context).textTheme;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefaultPadding,
                    right: kDefaultPadding,
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: [
                      ColorAndSize(theme: theme, product: product),
                      Description(product: product),
                      CartCounter(),
                    ],
                  ),
                ),
                ProductDetailsHeader(theme: theme, product: product)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
