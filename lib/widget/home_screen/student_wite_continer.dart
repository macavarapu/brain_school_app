import 'package:flutter/cupertino.dart';


import '../../constants/colors_constants.dart';

class Studentwhitecontiner extends StatelessWidget {
  const Studentwhitecontiner({super.key, });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular( kDefaultPadding *3),
          topRight: Radius.circular( kDefaultPadding *3),
        ),
        color: kTextWhiteColor ,
      ),

    );
  }
}