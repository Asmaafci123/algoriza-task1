import 'package:flutter/material.dart';
import 'package:task1/screens/onboarding-screen.dart';
import 'package:task1/size.dart';

class ItemOfOnboarding extends StatelessWidget {
  final ItemOfPageView item;
  const ItemOfOnboarding({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 200, child: Image(image: AssetImage(item.imagePath))),
        SizedBox(
          height: SizeConfig.defaultSize! * 0.8,
        ),
        Text(
          item.headLine,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w500, fontSize: 27),
        ),
        SizedBox(
          height: SizeConfig.defaultSize! * 0.8,
        ),
        Text(
          item.description,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.grey[600],
              fontWeight: FontWeight.w400,
              fontSize: 16),
        ),
      ],
    );
  }
}
