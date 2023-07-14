import 'package:flutter/material.dart';


import '../../constants/colors_constants.dart';
import '../../constants/image_constants.dart';

class Studentpicture extends StatelessWidget {
  const Studentpicture({super.key, required this.picaddress, required this.onpressed});
  final String picaddress;
  final VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onpressed,
      child: CircleAvatar(
        maxRadius: 50,
        minRadius: 50,
        backgroundColor: kSecondaryColor,
        backgroundImage: AssetImage(picaddress,
          // ImageConstants.student_profile
        ),
      ),
    );
  }
}