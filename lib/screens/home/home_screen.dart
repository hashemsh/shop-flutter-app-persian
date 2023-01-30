import 'package:flutter/material.dart';
import 'package:shop_app_flutter/constants.dart';
import 'package:shop_app_flutter/screens/home/components/body.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: const Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      actions: [
        IconButton(
          onPressed: (() {}),
          icon: const Icon(
            Icons.search_rounded,
            color: kTextColor,
          ),
        ),
        IconButton(
          onPressed: (() {}),
          icon: const Icon(
            Icons.shopping_cart_outlined,
            color: kTextColor,
          ),
        ),
        const SizedBox(
          width: kDefaultPadding / 2,
        )
      ],
    );
  }
}
