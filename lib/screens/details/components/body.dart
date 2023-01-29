import 'package:flutter/material.dart';
import 'package:shop_app_flutter/constants.dart';
import 'package:shop_app_flutter/models/Product.dart';

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
                  height: 500,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24))),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'کیف های جذاب و دیدنی ',
                        style: theme.subtitle2?.copyWith(color: Colors.white),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        product.title,
                        style: theme.headline4?.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: kDefaultPadding,
                      ),
                      Row(
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                    text: "قیمت\n",
                                    style: theme.subtitle2!
                                        .copyWith(color: Colors.white)),
                                TextSpan(
                                  text: "${product.price} تومان",
                                  style: theme.headline4?.copyWith(
                                      color: Colors.white,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: kDefaultPadding,
                          ),
                          Expanded(
                            child: Image.asset(
                              product.image,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
