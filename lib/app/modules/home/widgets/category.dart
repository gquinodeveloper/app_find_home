import 'package:app_find_home/app/core/theme/app_theme.dart';
import 'package:app_find_home/app/data/models/category_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: 100.0,
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            bool isSelected = index == 0 ? true : false;
            return ItemCategory(
              category: categories[index],
              isSelected: isSelected,
            );
          },
        ),
      ),
    );
  }
}

class ItemCategory extends StatelessWidget {
  ItemCategory({
    @required this.category,
    @required this.isSelected,
  });

  final CategoryModel category;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 85.0,
      margin: EdgeInsets.only(
        left: isSelected ? 20.0 : 11.0,
        bottom: isSelected ? 0 : 20.0,
      ),
      decoration: BoxDecoration(
        color: isSelected ? AppTheme.cyan : Colors.white,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            category.path,
            width: 30.0,
            color: isSelected ? Colors.white : AppTheme.light.withOpacity(.5),
          ),
          isSelected
              ? Center(
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 10.0,
                      right: 5.0,
                      left: 5.0,
                    ),
                    child: Text(
                      category.name,
                      style: Theme.of(context).textTheme.caption.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              : SizedBox()
        ],
      ),
    );
  }
}
