import 'package:flutter/material.dart';
import 'package:nihon_seed/Component/Button_Info.dart';

import '../Models/Data_Models.dart';

class DataCard extends StatelessWidget {
  const DataCard({super.key, required this.model, required this.color});

  final int color;
  final DataModel model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric( vertical: 8),
      child: Card(
        color: Color(color),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(25),
        ),
        elevation: 10,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Card(
              color: Color(color).withValues(alpha: .8),
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(model.imagePath!),
              ),
            ),

            ButtonInfo(model: model, color: color),
          ],
        ),
      ),
    );
  }
}
