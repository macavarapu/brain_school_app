import 'package:brain_school_starter/model/datesheet_model/datesheet_model.dart';
import 'package:flutter/material.dart';
import '../../constants/colors_constants.dart';

class Datesheetscreen extends StatelessWidget {
  const Datesheetscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text("DateSheet"),
        backgroundColor: kPrimaryColor,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Expanded(
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(kDefaultPadding ),
                      topRight: Radius.circular(kDefaultPadding ),
                    ),
                    color: kTextWhiteColor,
                  ),
                  child: ListView.builder(
                      itemCount: datesheet.length,
                      itemBuilder:  (context, index) {
                        return Container(
                          // width: MediaQuery.of(context).size.width,
                          // height: MediaQuery.of(context).size.height/8,
                          margin: EdgeInsets.only(left: kDefaultPadding/2,right: kDefaultPadding/2),
                          padding: EdgeInsets.all(kDefaultPadding),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: kDefaultPadding,
                                child: Divider(
                                  thickness: 1.0,
                                ),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(datesheet[index].Date.toString(),
                                        style: TextStyle(
                                          fontSize: 25,
                                          color: kTextBlackColor,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(datesheet[index].monthName,
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: kTextBlackColor,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(datesheet[index].subjectName,
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: kTextBlackColor,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(datesheet[index].dayName,
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: kTextBlackColor,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        // "${  datesheet[index].time}",
                                        datesheet[index].time,
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: kTextLightColor,
                                          // fontWeight: FontWeight.w300,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: kDefaultPadding,
                                child: Divider(
                                  thickness: 1.0,
                                ),
                              )
                            ],
                          ),

                        );
                      })
              ),

            )
          ],
        ),
      ),
    );
  }
}