import 'package:flutter/material.dart';

import '../../constants/colors_constants.dart';

class AssinmentButton extends StatelessWidget {
  const AssinmentButton({super.key, required this.title, required this.onpressed});
  final String title;
  final  VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Container(
        width: double.infinity,
        height: 45,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [kSecondaryColor, kPrimaryColor],
              begin: const FractionalOffset(0.0, 0.0),
              end: const FractionalOffset(0.5, 0.0),
              stops: [0.0,1.0],
              tileMode: TileMode.clamp,
            ),
            borderRadius: BorderRadius.circular(kDefaultPadding)),
        // borderRadius: BorderRadius.only(
        //   bottomRight: Radius.circular(kDefaultPadding),
        //   bottomLeft: Radius.circular(kDefaultPadding),
        // )),
        child: Center(
          child: Text(title,
            style: Theme.of(context).textTheme.subtitle2!.copyWith(
              fontSize: 16,
              color: kOtherColor,
              fontWeight: FontWeight.w500,

            ),
          ),
        ),
      ),
    );
  }
}