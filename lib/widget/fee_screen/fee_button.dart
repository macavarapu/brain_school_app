import 'package:flutter/material.dart';


import '../../constants/colors_constants.dart';

class FeeButton extends StatelessWidget {
  const FeeButton({super.key, required this.title, required this.iconData, required this.onpressed, });
  final String title;
  final IconData iconData;
  final VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpressed,
      //onTap: () {},
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
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(kDefaultPadding),
              bottomLeft: Radius.circular(kDefaultPadding),
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              // "Pay Now",
              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                fontSize: 25,
                fontWeight: FontWeight.w500,
                color: kOtherColor,
              ),
            ),
            Icon(
              iconData,
              // Icons.arrow_right_alt,
              size: 30,
              color: kOtherColor,
            ),
          ],
        ),
      ),
    );
  }
}