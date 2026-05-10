import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Component/Button_Info.dart';
import '../Models/Data_Models.dart';

class PhrasesPage extends StatelessWidget {
  PhrasesPage({super.key, required this.color});

  final int color;
  final List<DataModel> phrases = [
    DataModel(
      japaneseWord: "Kōdoku suru koto o wasurenaide kudasai",
      englishWord: "don't forget to subscribe",
      sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
    ),
    DataModel(
      japaneseWord: "Puroguramingu wa kantandesu",
      englishWord: "programming is easy",
      sound: 'sounds/phrases/programming_is_easy.wav',
    ),
    DataModel(
      japaneseWord: "Doko ni iku no",
      englishWord: "where are you going",
      sound: 'sounds/phrases/where_are_you_going.wav',
    ),
    DataModel(
      japaneseWord: "Namae wa nandesu ka",
      englishWord: "what is your name?",
      sound: 'sounds/phrases/what_is_your_name.wav',
    ),
    DataModel(
      japaneseWord: "Watashi wa anime ga daisukidesu",
      englishWord: "i love anime",
      sound: 'sounds/phrases/i_love_anime.wav',
    ),
    DataModel(
      japaneseWord: "Go kibun wa ikagadesu ka",
      englishWord: "how are you feeling?",
      sound: 'sounds/phrases/how_are_you_feeling.wav',
    ),
    DataModel(
      japaneseWord: "Kimasu ka",
      englishWord: "are you coming?",
      sound: 'sounds/phrases/are_you_coming.wav',
    ),
    DataModel(
      japaneseWord: "Hai, ikimasu",
      englishWord: "yes im coming",
      sound: 'sounds/phrases/yes_im_coming.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        foregroundColor: Colors.black,
        title: Text(
          "Phrases",
          style: TextStyle(color: Colors.black, fontSize: 30.sp),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[300],
      ),

      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (context, index) {
          return Padding(
            padding:  EdgeInsets.all(8.0.r),
            child: ButtonInfo(model: phrases[index], color: color),
          );
        },
      ),
    );
  }
}
