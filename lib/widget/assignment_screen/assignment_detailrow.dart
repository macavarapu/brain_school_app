import 'package:flutter/material.dart';

import '../../constants/colors_constants.dart';
import '../../model/assignment_model/assignment_data.dart';


class AssignmentdetailRow extends StatelessWidget {
  const AssignmentdetailRow({super.key, required this.title, required this.Statusvalue});
  final String title;
  final String Statusvalue;

  get index => assignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          //assignment[index].assignDate,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: kTextLightColor,
          ),
        ),
        Text(
          Statusvalue,
          // assignment[index].lastDate,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: kTextBlackColor,
          ),
        ),
      ],
    );
  }
}