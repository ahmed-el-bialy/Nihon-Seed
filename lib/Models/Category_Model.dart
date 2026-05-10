import 'package:flutter/cupertino.dart';

class CategoryModel {
  final String name;
  final int color;
  final Icon icon;
  final Widget page;

  CategoryModel({
    required this.name,
    required this.color,
    required this.icon,
    required this.page,
  });
}