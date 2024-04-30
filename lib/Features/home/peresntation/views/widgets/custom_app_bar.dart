import 'package:bookappp/core/utils/app_router.dart';
import 'package:bookappp/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, right: 5, left: 5, bottom: 10),
      child: Row(
        children: [
          Image.asset(
            AssetsData.logo2,
            color: Colors.white,
            height: 80,
            width: 100,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kSearchView);
            },
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 22,
            ),
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
