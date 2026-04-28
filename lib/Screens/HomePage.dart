import 'package:flutter/material.dart';
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
      icon: const Icon(Icons.numbers, size: 38, color: Colors.white),
      page: NumbersPage(),
    ),
    CategoryModel(
      name: "Family Members",
      color: kFamilyViewsColor,
      icon: const Icon(Icons.family_restroom, size: 38, color: Colors.white),
      page: FamilyPage(),
    ),
    CategoryModel(
      name: "Colors",
      color: kColorViewsColor,
      icon: const Icon(
        Icons.color_lens_outlined,
        size: 38,
        color: Colors.white,
      ),
      page: ColorsPage(),
    ),
    CategoryModel(
      name: "Phrases",
      color: kPhrasesViewsColor,
      icon: const Icon(Icons.speaker_notes, size: 38, color: Colors.white),
      page: PhrasesPage(color: kPhrasesViewsColor,),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Text(
            "NihonSeed 🎌",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
        centerTitle: true,
      ),

      body: Column(
        children: [
          SizedBox(height: 20),
          HomePageBody(categoryList: categoryList),
        ],
      ),
    );
  }
}
