import 'package:flutter/material.dart';

import '../../constants/colors_constants.dart';

class ProfileDetailRow extends StatelessWidget {
  const ProfileDetailRow({super.key, required this.title, required this.value});
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          top: kDefaultPadding / 2,
          right: kDefaultPadding / 4,
          left: kDefaultPadding / 4),
      width: MediaQuery.of(context).size.width / 2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,

                // "Register number",
                style: TextStyle(
                    fontSize: 15,
                    color: kTextLightColor,
                    fontWeight: FontWeight.w600),
              ),
              kHalfSizedBox,
              Text(
                value,
                // "2020-ASDF-2021",
                style: TextStyle(
                    fontSize: 15,
                    color: kTextBlackColor,
                    fontWeight: FontWeight.w600),
              ),
              kHalfSizedBox,
              SizedBox(
                width: MediaQuery.of(context).size.width / 3,
                child: Divider(
                  thickness: 1.0,
                ),
              ),
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