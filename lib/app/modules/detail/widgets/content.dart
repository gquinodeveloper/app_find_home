import 'package:app_find_home/app/core/theme/app_theme.dart';
import 'package:app_find_home/app/core/utils/responsive.dart';
import 'package:app_find_home/app/data/models/house_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meta/meta.dart' show required;

class Content extends StatelessWidget {
  Content({@required this.house});

  final HouseModel house;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,
        height: Responsive.getScreenSize(context).height * .62,
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
        decoration: BoxDecoration(
          color: AppTheme.background,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          "assets/icons/location.svg",
                          color: AppTheme.blueDark,
                          height: 23.0,
                        ),
                        SizedBox(width: 10.0),
                        Text(
                          house.location,
                          style: Theme.of(context).textTheme.subtitle1.copyWith(
                              color: AppTheme.blueDark,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      house.name,
                      style: Theme.of(context).textTheme.headline5.copyWith(
                          color: AppTheme.blueDark,
                          fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
                CircleAvatar(
                  radius: 28.0,
                  backgroundImage: NetworkImage(house.avatar),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                "Information",
                style: Theme.of(context).textTheme.headline6.copyWith(
                    color: AppTheme.blueDark, fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              house.description,
              textAlign: TextAlign.justify,
              style: Theme.of(context).textTheme.subtitle1.copyWith(
                    color: AppTheme.blueDark,
                    fontWeight: FontWeight.w300,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
