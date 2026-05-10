import 'package:flutter/material.dart';

import '../Models/Data_Models.dart';
import 'Data_Card.dart';

class ItemListBuilder extends StatelessWidget {
  const ItemListBuilder({
    super.key,
    required this.modelList,
    required this.color,
  });

  final int color;
  final List<DataModel> modelList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: GridView.builder(
        itemCount: modelList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: .66,
          crossAxisSpacing: 6,
          mainAxisSpacing: 6,
        ),
        itemBuilder: (context, index) {
          return DataCard(model: modelList[index], color: color);
        },
      ),
    );
  }
}
