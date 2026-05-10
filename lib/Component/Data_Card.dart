import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Models/Data_Models.dart';
import 'Button_Info.dart';

class DataCard extends StatelessWidget {
  const DataCard({super.key, required this.model, required this.color});

  final int color;
  final DataModel model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
      child: Card(
        color: Color(color),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.r),
        ),
        elevation: 10,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 4,
              child: Card(
                color: Color(color).withValues(alpha: .5),
                elevation: 2,
                margin: EdgeInsets.all(12.r),
                child: Padding(
                  padding: EdgeInsets.all(8.0.r),
                  child: Image.asset(model.imagePath!, fit: BoxFit.contain),
                ),
              ),
            ),

            Flexible(
              flex: 4,
              child: ButtonInfo(model: model, color: color),
            ),
          ],
        ),
      ),
    );
  }
}
