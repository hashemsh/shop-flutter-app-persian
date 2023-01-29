import 'package:flutter/material.dart';
import 'package:shop_app_flutter/constants.dart';
import 'package:shop_app_flutter/models/Product.dart';
import 'package:shop_app_flutter/screens/details/components/color_dot.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    Key? key,
    required this.theme,
    required this.product,
  }) : super(key: key);

  final TextTheme theme;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "رنگ",
                style: theme.subtitle1!.copyWith(color: kTextColor),
              ),
              Row(
                children: const [
                  ColorDot(
                    color: Color(0xFF356C95),
                    isSelected: true,
                  ),
                  ColorDot(color: Color(0xFFF8C078)),
                  ColorDot(color: Color(0xFFA29B9B)),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: theme.subtitle1!.copyWith(
                color: kTextColor,
              ),
              children: [
                const TextSpan(text: "سایز\n"),
                TextSpan(
                  text: "${product.size}",
                  style: theme.headline6!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
