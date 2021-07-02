import 'package:app_find_home/app/core/theme/app_theme.dart';
import 'package:app_find_home/app/global_widgets/button_navigator.dart';
import 'package:app_find_home/app/global_widgets/content_title.dart';
import 'package:app_find_home/app/modules/home/home_controller.dart';
import 'package:app_find_home/app/modules/home/widgets/category.dart';
import 'package:app_find_home/app/modules/home/widgets/header.dart';
import 'package:app_find_home/app/modules/home/widgets/houses.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/search.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (_) => Scaffold(
        backgroundColor: AppTheme.background,
        body: Stack(
          children: [
            Positioned.fill(
              child: CustomScrollView(
                slivers: [
                  Header(),
                  Search(),
                  Category(),
                  ContentTitle(
                    title: "Nearby to you",
                    more: "View more",
                  ),
                  Houses(),
                ],
              ),
            ),
            ButtonNavigator()
          ],
        ),
      ),
    );
  }
}
