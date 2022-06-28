import 'package:flutter/material.dart';
import 'package:task1/size.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.defaultSize! * 0.04,
      width: SizeConfig.defaultSize! * 16,
      color: Colors.grey,
    );
  }
}
