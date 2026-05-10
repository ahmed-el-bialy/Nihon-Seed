import 'package:flutter/material.dart';
import 'package:nihon_seed/Component/Item_List_Builder.dart';
import 'package:nihon_seed/helper/constants.dart';

import '../Models/Data_Models.dart';

class ColorsPage extends StatelessWidget {
  ColorsPage({super.key});

  final List<DataModel> colorsList = [
    DataModel(
      japaneseWord: "Aka",
      englishWord: "Red",
      imagePath: 'assets/images/colors/color_red.png',
      sound: 'sounds/colors/red.wav',
    ),
    DataModel(
      japaneseWord: "Midori",
      englishWord: "Green",
      imagePath: 'assets/images/colors/color_green.png',
      sound: 'sounds/colors/green.wav',
    ),
    DataModel(
      japaneseWord: "Shiro",
      englishWord: "White",
      imagePath: 'assets/images/colors/color_white.png',
      sound: 'sounds/colors/white.wav',
    ),
    DataModel(
      japaneseWord: "Kiiro",
      englishWord: "Yellow",
      imagePath: 'assets/images/colors/yellow.png',
      sound: 'sounds/colors/yellow.wav',
    ),
    DataModel(
      japaneseWord: "Burakku",
      englishWord: "Black",
      imagePath: 'assets/images/colors/color_black.png',
      sound: 'sounds/colors/black.wav',
    ),
    DataModel(
      japaneseWord: "Chairo",
      englishWord: "Brown",
      imagePath: 'assets/images/colors/color_brown.png',
      sound: 'sounds/colors/brown.wav',
    ),
    DataModel(
      japaneseWord: "Gurē",
      englishWord: "Gray",
      imagePath: 'assets/images/colors/color_gray.png',
      sound: 'sounds/colors/gray.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        foregroundColor: Colors.black,
        title: Text(
          "Colors",
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[300],
      ),

      body: ItemListBuilder(modelList: colorsList, color: kColorViewsColor),
    );
  }
}