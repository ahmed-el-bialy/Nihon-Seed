import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nihon_seed/helper/constants.dart';

import '../Component/Item_List_Builder.dart';
import '../Models/Data_Models.dart';

class NumbersPage extends StatelessWidget {
  NumbersPage({super.key});

  final List<DataModel> numbersList = [
    DataModel(
      japaneseWord: "Ichi",
      englishWord: "one",
      imagePath: 'assets/images/numbers/number_one.png',
      sound: 'sounds/numbers/number_one.mp3',
    ),
    DataModel(
      japaneseWord: "Ni",
      englishWord: "two",
      imagePath: 'assets/images/numbers/number_two.png',
      sound: 'sounds/numbers/number_two_sound.mp3',
    ),
    DataModel(
      japaneseWord: "San",
      englishWord: "three",
      imagePath: 'assets/images/numbers/number_three.png',
      sound: 'sounds/numbers/number_three_sound.mp3',
    ),
    DataModel(
      japaneseWord: "Shi",
      englishWord: "four",
      imagePath: 'assets/images/numbers/number_four.png',
      sound: 'sounds/numbers/number_four_sound.mp3',
    ),
    DataModel(
      japaneseWord: "Go",
      englishWord: "five",
      imagePath: 'assets/images/numbers/number_five.png',
      sound: 'sounds/numbers/number_five.mp3',
    ),
    DataModel(
      japaneseWord: "Roku",
      englishWord: "six",
      imagePath: 'assets/images/numbers/number_six.png',
      sound: 'sounds/numbers/number_six_sound.mp3',
    ),
    DataModel(
      japaneseWord: "Nana",
      englishWord: "seven",
      imagePath: 'assets/images/numbers/number_seven.png',
      sound: 'sounds/numbers/number_seven.mp3',
    ),
    DataModel(
      japaneseWord: "Hachi",
      englishWord: "eight",
      imagePath: 'assets/images/numbers/number_eight.png',
      sound: 'sounds/numbers/number_eight_sound.mp3',
    ),
    DataModel(
      japaneseWord: "Kyu",
      englishWord: "nine",
      imagePath: 'assets/images/numbers/number_nine.png',
      sound: 'sounds/numbers/number_nine_sound.mp3',
    ),
    DataModel(
      japaneseWord: "Juu",
      englishWord: "ten",
      imagePath: 'assets/images/numbers/number_ten.png',
      sound: 'sounds/numbers/number_ten_sound.mp3',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(

        foregroundColor: Colors.black,
        title: Text(
          "Numbers",
          style: TextStyle(
            color: Colors.black,
            fontSize: 30.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[300],
      ),

      body: Padding(
        padding:  EdgeInsets.symmetric(vertical: 8.h),
        child: ItemListBuilder(modelList: numbersList, color: kNumberViewsColor,),
      ),
    );
  }
}
