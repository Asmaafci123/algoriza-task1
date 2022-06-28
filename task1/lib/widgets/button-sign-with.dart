import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:task1/size.dart';

class ButtonForSignWith extends StatelessWidget {
  const ButtonForSignWith({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.blue)),
        height: 50,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/google.png',
              width: SizeConfig.defaultSize! * 3,
            ),
            Text(
              'Sign with by google',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.blue,
                  fontSize: SizeConfig.defaultSize! * 1.5),
            )
          ],
        ),
      ),
    );
  }
}
