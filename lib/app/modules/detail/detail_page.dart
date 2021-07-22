import 'package:app_find_home/app/data/models/house_model.dart';
import 'package:app_find_home/app/modules/detail/detail_controller.dart';
import 'package:app_find_home/app/modules/detail/widgets/appbar_actions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/content.dart';
import 'widgets/footer.dart';
import 'widgets/header.dart';
import 'package:meta/meta.dart' show required;

class DetailPage extends StatelessWidget {
  DetailPage({
    @required this.house,
  });

  final HouseModel house;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DetailController>(
      builder: (_) => Scaffold(
        body: Stack(
          children: [
            Header(paths: _.house.photo),
            AppBarActions(),
            Content(house: _.house),
            Footer(house: _.house),
          ],
        ),
      ),
    );
  }
}
