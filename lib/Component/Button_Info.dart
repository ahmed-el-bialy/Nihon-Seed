import 'package:flutter/material.dart';

import '../Models/Data_Models.dart';

class ButtonInfo extends StatelessWidget {
  const ButtonInfo({super.key, required this.model, required this.color});

  final DataModel model;
  final int color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          color: Color(color),
          borderRadius: BorderRadiusGeometry.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(flex: 1),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Text(
                      model.japaneseWord,
                      style: TextStyle(
                        color: Colors.yellow[100],
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      model.englishWord,
                      style: TextStyle(
                        color: Colors.white.withValues(alpha: .7),
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),

              Spacer(flex: 10),
              IconButton(
                onPressed: () {
                  model.playSound();
                },

                icon: Icon(
                  Icons.play_arrow_rounded,
                  size: 40,
                  color: Color(0xffffffff),
                ),
              ),
              Spacer(flex: 1),
            ],
          ),
        ),
      ),
    );
  }
}
