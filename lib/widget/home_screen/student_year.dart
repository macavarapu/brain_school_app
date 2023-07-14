import 'package:flutter/material.dart';


import '../../constants/colors_constants.dart';

class Studentyear extends StatelessWidget {
  const Studentyear({super.key, required this.studentyear});
  final String studentyear;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 20,
      decoration: BoxDecoration(
        color: kOtherColor,
        borderRadius: BorderRadius.circular(kDefaultPadding),
      ),
      child: Center(
        child: Text(
          studentyear,
          // "2020-2023",
          style: TextStyle(
            fontSize: 12,
            //fontWeight: FontWeight.w200,
            color: kTextBlackColor,
          ),
        ),
      ),
    );
  }
}