import 'package:flutter/material.dart';

import '../constants/colors_constants.dart';

class CustomButton extends StatelessWidget {

  final String text;
  final VoidCallback onTop;
  // final IconData? iconData;

  const CustomButton({Key? key, required this.text, required this.onTop,  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTop,
      child:  Container(
        width: 250,
        height: 50,
        alignment: Alignment.center,
        child: Text(text),

      ),

      style: ElevatedButton.styleFrom(
        maximumSize: const Size(double.infinity,50),backgroundColor:kPrimaryColor,
      ),

    );

  }
}