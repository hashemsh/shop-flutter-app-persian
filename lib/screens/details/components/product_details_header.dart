import 'package:flutter/material.dart';
import 'package:shop_app_flutter/constants.dart';
import 'package:shop_app_flutter/models/product.dart';

class ProductDetailsHeader extends StatelessWidget {
  const ProductDetailsHeader({
    Key? key,
    required this.theme,
    required this.product,
  }) : super(key: key);

  final TextTheme theme;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'کیف های جذاب و دیدنی ',
            style: theme.titleSmall?.copyWith(color: Colors.white),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            product.title,
            style: theme.headlineMedium
                ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: kDefaultPadding,
          ),
          Row(
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                        text: "قیمت\n",
                        style: theme.titleSmall!.copyWith(color: Colors.white)),
                    TextSpan(
                      text: "${product.price} تومان",
                      style: theme.headlineMedium?.copyWith(
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
                child: Hero(
                  tag: "${product.id}",
                  child: Image.asset(
                    product.image,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
