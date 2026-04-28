import 'package:flutter/material.dart';
import 'package:nihon_seed/Component/Item_List_Builder.dart';
import 'package:nihon_seed/helper/constants.dart';

import '../Models/Data_Models.dart';

class FamilyPage extends StatelessWidget {
  FamilyPage({super.key});

  final List<DataModel> family = [
    DataModel(
      japaneseWord: "Ojii-san",
      englishWord: "Grandfather",
      imagePath: 'assets/images/family_members/family_grandfather.png',
      sound: 'sounds/family_members/grand father.wav',
    ),
    DataModel(
      japaneseWord: "Sobo",
      englishWord: "Grandmother",
      imagePath: 'assets/images/family_members/family_grandmother.png',
      sound: 'sounds/family_members/grand mother.wav',
    ),
    DataModel(
      japaneseWord: "Chichi",
      englishWord: "Father",
      imagePath: 'assets/images/family_members/family_father.png',
      sound: 'sounds/family_members/father.wav',
    ),
    DataModel(
      japaneseWord: "Haha",
      englishWord: "Mother",
      imagePath: 'assets/images/family_members/family_mother.png',
      sound: 'sounds/family_members/mother.wav',
    ),
    DataModel(
      japaneseWord: "Nii-san",
      englishWord: "Older Brother",
      imagePath: 'assets/images/family_members/family_older_brother.png',
      sound: 'sounds/family_members/older brother.wav',
    ),
    DataModel(
      japaneseWord: "Ane",
      englishWord: "Older Sister",
      imagePath: 'assets/images/family_members/family_older_sister.png',
      sound: 'sounds/family_members/older sister.wav',
    ),
    DataModel(
      japaneseWord: "Otouto",
      englishWord: "Younger Brother",
      imagePath: 'assets/images/family_members/family_younger_brother.png',
      sound: 'sounds/family_members/younger brother.wav',
    ),
    DataModel(
      japaneseWord: "Imouto",
      englishWord: "Younger Sister",
      imagePath: 'assets/images/family_members/family_younger_sister.png',
      sound: 'sounds/family_members/younger sister.wav',
    ),
    DataModel(
      japaneseWord: "Musuko",
      englishWord: "Son",
      imagePath: 'assets/images/family_members/family_son.png',
      sound: 'sounds/family_members/son.wav',
    ),
    DataModel(
      japaneseWord: "Musume",
      englishWord: "Daughter",
      imagePath: 'assets/images/family_members/family_daughter.png',
      sound: 'sounds/family_members/daughter.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        foregroundColor: Colors.black,
        title: Text(
          "Family Members",
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[300],
      ),

      body: ItemListBuilder(modelList: family, color: kFamilyViewsColor),
    );
  }
}
