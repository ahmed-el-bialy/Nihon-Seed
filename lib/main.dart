import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Screens/HomePage.dart';

void main() {
  runApp(NihonSeed());
}

class NihonSeed extends StatelessWidget {
  const NihonSeed({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (context, child) {
        return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
      },
    );
  }
}
