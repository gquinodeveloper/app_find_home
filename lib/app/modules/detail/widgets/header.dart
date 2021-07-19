import 'package:flutter/material.dart';
import 'package:flutter_card_swipper/flutter_card_swiper.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 380.0,
      width: double.infinity,
      color: Colors.red,
      child: ConstrainedBox(
        child: Swiper(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://i.pinimg.com/474x/81/90/00/81900060c956f2b516310c515907e0f7.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            );
          },
          pagination: SwiperPagination(
            margin: EdgeInsets.only(bottom: 60.0),
          ),
        ),
        constraints: BoxConstraints.loose(
          Size(360.0, 170.0),
        ),
      ),
    );
  }
}
