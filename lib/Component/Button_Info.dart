import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Models/Data_Models.dart';

class ButtonInfo extends StatelessWidget {
  const ButtonInfo({super.key, required this.model, required this.color});

  final DataModel model;
  final int color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(color),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 6.0.h),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 3.0.h, horizontal: 6.w),
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    model.japaneseWord,
                    style: TextStyle(
                      color: Colors.yellow[100],
                      fontSize: 23.sp,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins",
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 7.w),
                child: Text(
                  model.englishWord,
                  style: TextStyle(
                    color: Colors.white.withValues(alpha: .7),
                    fontSize: 18.sp,
                    fontFamily: "Poppins",
                  ),
                ),
              ),

              IconButton(
                onPressed: () {
                  model.playSound();
                },

                icon: Icon(
                  Icons.play_arrow_rounded,
                  size: 35.sp,
                  color: Color(0xffffffff),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
