import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Models/Category_Model.dart';
import 'Category_item.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key, required this.categoryList});

  final List<CategoryModel> categoryList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2 / 3,
        ),
        itemCount: categoryList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0.h),
            child: CategoryCard(model: categoryList[index]),
          );
        },
      ),
    );
  }
}
