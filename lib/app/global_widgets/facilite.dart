import 'package:app_find_home/app/core/theme/app_theme.dart';
import 'package:app_find_home/app/data/models/house_model.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

class Facilities extends StatelessWidget {
  const Facilities({
    Key key,
    @required this.house,
    this.isDetail = false,
  }) : super(key: key);

  final HouseModel house;
  final bool isDetail;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Facilitie(
          path: 'assets/icons/bedroom.svg',
          name: house.bedroom.toString(),
          isDetail: isDetail,
        ),
        Facilitie(
          path: 'assets/icons/bathroom.svg',
          name: house.bathroom.toString(),
          isDetail: isDetail,
        ),
        Facilitie(
          path: 'assets/icons/menu.svg',
          name: house.menu.toString(),
          isDetail: isDetail,
        ),
      ],
    );
  }
}

class Facilitie extends StatelessWidget {
  const Facilitie({
    Key key,
    @required this.path,
    @required this.name,
    this.isDetail,
  }) : super(key: key);

  final String path;
  final String name;
  final bool isDetail;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          !isDetail ? EdgeInsets.only(left: 15) : EdgeInsets.only(right: 25),
      child: Row(
        children: [
          SvgPicture.asset(
            path,
            width: !isDetail ? 18 : 30,
            color: !isDetail ? AppTheme.searchColor : AppTheme.cyan,
          ),
          Padding(
            padding: EdgeInsets.only(left: !isDetail ? 2.5 : 7.5),
            child: Text(
              name,
              style: !isDetail
                  ? Theme.of(context)
                      .textTheme
                      .subtitle2
                      .copyWith(color: AppTheme.searchColor)
                  : Theme.of(context).textTheme.headline5.copyWith(
                      color: AppTheme.searchColor, fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
