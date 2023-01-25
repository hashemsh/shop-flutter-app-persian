import 'package:flutter/material.dart';
import 'package:shop_app_flutter/constants.dart';
import 'package:shop_app_flutter/screens/home/components/categories.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            " هر چی خانم میخواد .. ",
            style: theme.textTheme.headline6!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        const Categories(),
      ],
    );
  }
}
