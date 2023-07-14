
import 'package:flutter/material.dart';


import '../../constants/colors_constants.dart';
import '../../model/assignment_model/assignment_data.dart';
import '../../widget/assignment_screen/assignment_button.dart';
import '../../widget/assignment_screen/assignment_detailrow.dart';

class Assignmentscreen extends StatelessWidget {
  const Assignmentscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text("Assignment"),
        backgroundColor: kPrimaryColor,
      ),
      body: Column(
        children: [
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
                      padding: EdgeInsets.all(kDefaultPadding),
                      itemCount: assignment.length,
                      itemBuilder:  (context, int index) {
                        return Container(
                          margin: EdgeInsets.only(bottom: kDefaultPadding),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                padding: EdgeInsets.all(kDefaultPadding),
                                decoration: BoxDecoration(

                                  borderRadius: BorderRadius.circular(kDefaultPadding),
                                  color: kOtherColor,
                                  boxShadow: [
                                    BoxShadow(
                                      color: kTextLightColor,
                                      blurRadius: 2.0,
                                    )
                                  ],

                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        color: kSecondaryColor.withOpacity(0.4),
                                        borderRadius: BorderRadius.circular(kDefaultPadding),
                                      ),
                                      child: Center(
                                        child: Text(
                                          assignment[index].subjectName,
                                          style: TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w400,
                                            color: kPrimaryColor,
                                          ),
                                        ),
                                      ),
                                    ),
                                    kHalfSizedBox,
                                    Text(
                                      assignment[index].topicName,
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                      ),

                                    ),
                                    kHalfSizedBox,
                                    AssignmentdetailRow(
                                      title: "Assin Date",
                                      Statusvalue:assignment[index].lastDate,
                                    ),
                                    AssignmentdetailRow(
                                      title: "Last Date",
                                      Statusvalue:assignment[index].lastDate,
                                    ),
                                    AssignmentdetailRow(
                                      title: "Status",
                                      Statusvalue:assignment[index].status,
                                    ),
                                    kHalfSizedBox,
                                    if(assignment[index].status == "pending")
                                      AssinmentButton(
                                        title: "To be submitied",
                                        onpressed: (){},
                                      ),


                                  ],
                                ),
                              ),
                            ],
                          ),
                        );

                      })
              )

          ),

        ],
      ),
    );
  }
}