import 'package:flutter/material.dart';


import '../../constants/colors_constants.dart';

class StudentDatacard extends StatelessWidget {
  const StudentDatacard({super.key, required this.title, required this.value, required this.onpressed});
  final String title;
  final String value;
  final VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpressed,
      child: Container(
        width: MediaQuery.of(context).size.width / 2.5,
        height: MediaQuery.of(context).size.height / 9,
        decoration: BoxDecoration(
          color: kOtherColor,
          borderRadius: BorderRadius.circular(kDefaultPadding),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              title,
              // "Attendance",
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                fontSize: 18,
                color: kTextBlackColor,
                fontWeight: FontWeight.w800,
              ),
            ),
            Text(
              value,

              // "90.02%",
              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                fontSize: 25,
                color: kTextBlackColor,
                fontWeight: FontWeight.w300,
              ),
            )
          ],
        ),
      ),
    );
  }
}