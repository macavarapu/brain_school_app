import 'package:flutter/material.dart';

import '../../constants/colors_constants.dart';

class Studentclass extends StatelessWidget {
  const Studentclass({super.key, required this.studentclass});
  final String studentclass;

  @override
  Widget build(BuildContext context) {
    return Text(
      studentclass,
      // "Class X-II A Roll no 12",
      style: Theme.of(context).textTheme.subtitle1!.copyWith(
        fontSize: 15,
        color: kOtherColor,
      ),
    );
  }
}