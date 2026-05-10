import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nihon_seed/Models/Category_Model.dart';
import 'package:nihon_seed/Screens/ColorsPage.dart';
import 'package:nihon_seed/Screens/FamilyPage.dart';
import 'package:nihon_seed/Screens/NumbersPage.dart';
import 'package:nihon_seed/Screens/phrasesPage.dart';
import 'package:nihon_seed/helper/constants.dart';

import '../Component/Home_Page_Body.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<CategoryModel> categoryList = [
    CategoryModel(
      name: "Numbers",
      color: kNumberViewsColor,
      icon: Icon(Icons.numbers, size: 38.sp, color: Colors.white),
      page: NumbersPage(),
    ),
    CategoryModel(
      name: "Family",
      color: kFamilyViewsColor,
      icon: Icon(Icons.family_restroom, size: 38.sp, color: Colors.white),
      page: FamilyPage(),
    ),
    CategoryModel(
      name: "Colors",
      color: kColorViewsColor,
      icon: Icon(Icons.color_lens_outlined, size: 38.sp, color: Colors.white),
      page: ColorsPage(),
    ),
    CategoryModel(
      name: "Phrases",
      color: kPhrasesViewsColor,
      icon: Icon(Icons.speaker_notes, size: 38.sp, color: Colors.white),
      page: PhrasesPage(color: kPhrasesViewsColor),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        title: Padding(
          padding:  EdgeInsets.symmetric(vertical: 10.0.h),
          child: Text(
            "NihonSeed",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 28.sp,
            ),
          ),
        ),
        centerTitle: true,
      ),

      body: Column(
        children: [
          HomePageBody(categoryList: categoryList),
        ],
      ),
    );
  }
}
