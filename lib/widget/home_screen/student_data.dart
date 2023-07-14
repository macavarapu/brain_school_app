import 'package:flutter/material.dart';


import '../../constants/colors_constants.dart';

class StudentName extends StatelessWidget {
  const StudentName({super.key, required this.studentname,  });
  final String  studentname;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Hi",
          style: Theme.of(context).textTheme.subtitle1!.copyWith(
            // fontWeight: FontWeight.w200,
            color: kOtherColor,
          ),
        ),
        Text(
          studentname,
          //"Ayesha",
          style: Theme.of(context).textTheme.subtitle1!.copyWith(
            fontWeight: FontWeight.w500,
            color: kOtherColor,
            fontSize: 25,
          ),
        ),
      ],
    );
  }
}