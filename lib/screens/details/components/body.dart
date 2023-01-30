import 'package:flutter/material.dart';
import 'package:shop_app_flutter/constants.dart';
import 'package:shop_app_flutter/models/product.dart';
import 'package:shop_app_flutter/screens/details/components/add_to_cart.dart';
import 'package:shop_app_flutter/screens/details/components/color_and_size.dart';
import 'package:shop_app_flutter/screens/details/components/counter_with_fav_btn.dart';
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
      physics: const BouncingScrollPhysics(),
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
                      const SizedBox(height: kDefaultPadding / 2),
                      Description(product: product),
                      const SizedBox(height: kDefaultPadding / 2),
                      const CounterWithFavBtn(),
                      const SizedBox(height: kDefaultPadding / 2),
                      AddToCart(product: product)
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
