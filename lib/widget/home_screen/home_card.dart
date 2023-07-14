import 'package:flutter/material.dart';
import 'package:svg_icon/svg_icon.dart';
import '../../constants/colors_constants.dart';

class Homecard extends StatelessWidget {
  const Homecard({super.key, required this.onpressed, required this.icon, required this.title});
  final VoidCallback onpressed;
  final String icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpressed,
      child: Container(
        margin: EdgeInsets.only(top: kDefaultPadding / 2),
        width: MediaQuery.of(context).size.width / 2.5,
        height: MediaQuery.of(context).size.height / 6,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(kDefaultPadding / 2),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgIcon(
              icon,
              // ImageConstants.ask,
              height: 40,
              width: 40,
              color: kOtherColor,
            ),
            Text(
              title,

              // "Ask",
              textAlign: TextAlign.center,
              style:TextStyle(fontSize: 18,color: kOtherColor),
              // Theme.of(context).textTheme.subtitle2,
            ),
            SizedBox(
              height: kDefaultPadding / 3,
            ),
          ],
        ),
      ),
    );
  }
}