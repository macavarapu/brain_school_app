import 'package:brain_school_starter/model/fee_data_model/fee_data.dart';

import 'package:flutter/material.dart';

import '../../constants/colors_constants.dart';
import '../../widget/fee_screen/fee_button.dart';
import '../../widget/fee_screen/fee_detail_row.dart';

class Feesscreen extends StatelessWidget {
  const Feesscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text("Fee"),
        backgroundColor: kPrimaryColor,
      ),
      body: Column(
        children: [
          //  Studentwhitecontiner(child: Column(),),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(kDefaultPadding * 3),
                  topRight: Radius.circular(kDefaultPadding * 3),
                ),
                color: kTextWhiteColor,
              ),
              child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.all(kDefaultPadding),
                  itemCount: fee.length,
                  itemBuilder: (context, int index) {
                    return Container(
                      margin: EdgeInsets.only(bottom: kDefaultPadding),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(kDefaultPadding),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(kDefaultPadding),
                                ),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: kTextLightColor,
                                    blurRadius: 2.0,
                                  )
                                ]),
                            child: Column(
                              children: [
                                FeeDetailRow(
                                  title: "Reciept No",
                                  Statusvalue: fee[index].receiptNo,
                                ),
                                SizedBox(
                                  height: kDefaultPadding,
                                  child: Divider(
                                    thickness: 1.0,
                                  ),
                                ),
                                FeeDetailRow(
                                  title: "Month",
                                  Statusvalue: fee[index].month,
                                ),
                                sizedBox,
                                FeeDetailRow(
                                  title: "Payment Date",
                                  Statusvalue: fee[index].date,
                                ),
                                sizedBox,
                                FeeDetailRow(
                                  title: "Status",
                                  Statusvalue: fee[index].paymentStatus,
                                ),
                                sizedBox,
                                SizedBox(
                                  height: kDefaultPadding,
                                  child: Divider(
                                    thickness: 1.0,
                                  ),
                                ),
                                FeeDetailRow(
                                  title: "Total AMount",
                                  Statusvalue: fee[index].totalAmount,
                                ),

                                // FeeDetailRow(title: "Reciept No", Statusvalue:fee[index].receiptNo, ),
                              ],
                            ),
                          ),
                          FeeButton(
                            title: fee[index].btnStatus,
                            iconData: fee[index].btnStatus=="paid"?Icons.download_outlined:Icons.arrow_forward_outlined,
                            onpressed: (){},
                          ),

                        ],
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}