import 'package:flutter/material.dart';

import '../../constants/colors_constants.dart';

class ProfileDetailColum extends StatelessWidget {
  const ProfileDetailColum({super.key, required this.title, required this.value});
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,

                // "A Class",
                style: TextStyle(
                  color: kTextLightColor, fontSize: 15,
                  // fontWeight: FontWeight.w600,
                ),
              ),
              kHalfWidthSizedBox,
              Text(
                value,
                //"Ahsha",
                style: TextStyle(fontSize: 15, color: kTextBlackColor,fontWeight: FontWeight.bold),
              ),
              kHalfSizedBox,
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.1,
                child: Divider(
                  thickness: 1.1,
                ),
              )
            ],
          ),
          Icon(
            Icons.lock_outline,
            size: 20.0,
          ),
        ],
      ),
    );
  }
}