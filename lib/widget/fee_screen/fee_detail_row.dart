import 'package:flutter/material.dart';

import '../../constants/colors_constants.dart';
import '../../model/fee_data_model/fee_data.dart';

class FeeDetailRow extends StatelessWidget {
  const FeeDetailRow({super.key, required this.title, required this.Statusvalue});
  final String title;
  final String  Statusvalue;

  get index => fee;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          //"Reciept No",
          style: Theme.of(context)
              .textTheme
              .subtitle2!
              .copyWith(fontSize: 15, color: kTextLightColor),
        ),
        Text(
          Statusvalue,
          // fee[index].receiptNo,
          // "Reciept No",
          style: Theme.of(context)
              .textTheme
              .subtitle2!
              .copyWith(fontSize: 15, color: kTextBlackColor),
        ),
      ],
    );
  }
}