import 'package:app_find_home/app/core/theme/app_theme.dart';
import 'package:app_find_home/app/core/utils/responsive.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0.0,
      left: 0.0,
      right: 0.0,
      child: Container(
        width: double.infinity,
        height: Responsive.getScreenSize(context).height * .1,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              '\$${1500}',
              style: Theme.of(context).textTheme.headline5.copyWith(
                  color: AppTheme.blueDark, fontWeight: FontWeight.bold),
            ),
            Container(
              width: Responsive.getScreenSize(context).width * .4,
              height: Responsive.getScreenSize(context).height * .06,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: AppTheme.cyan,
                borderRadius: BorderRadius.circular(18.0),
              ),
              child: Text(
                "Reserved Now!",
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    .copyWith(color: Colors.white, fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
