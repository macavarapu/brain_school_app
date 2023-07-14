import 'package:brain_school_starter/model/result_model/result_model.dart';
import 'package:brain_school_starter/widget/result_screen/result_circulaterpainter.dart';
import 'package:flutter/material.dart';

import '../../constants/colors_constants.dart';
import 'package:collection/collection.dart';
class Resultscreen extends StatelessWidget {
  const Resultscreen({super.key});

  @override
  Widget build(BuildContext context) {
    //int oMarks =result.map((e) => 0.obtainedmarks) ,sum,toInt();

    // int oMarks =result.map((e) =>0.o).sum,toInt();
    // int tMarks =result.map((e) => 0,obtainedmarks).sum,toInt();

    return  Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title:Text("Result") ,
        backgroundColor: kPrimaryColor,
      ),
        body: Column(
          children: [
            Container(
              height: 200,
              child: CustomPaint(
                foregroundPainter: Circularpainter(
                     backgroundColor:kPrimaryColor, LineColor: kOtherColor, width: 15,
                 // backgroundColor: kPrimaryColor,
                ),
                child: Center(
                  child: Text("550",style: TextStyle(fontSize: 30,color: kOtherColor),),
                ),
              ),

            ),
            sizedBox,
      Text("You are exclent",style: TextStyle(fontSize: 20,color: kOtherColor)),
      Text("Aisha!!",style: TextStyle(fontSize: 30,color: kOtherColor)),
            sizedBox,
            Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(kDefaultPadding * 3),
                      topRight: Radius.circular(kDefaultPadding * 3),
                    ),
                    color: kOtherColor,
                  ),
                  child: ListView.builder(
                    padding: EdgeInsets.all(kDefaultPadding),
                    itemCount: result.length,
                      itemBuilder: (context , index){
                      return Container(
                        margin: EdgeInsets.only(bottom: kDefaultPadding),
                        padding: EdgeInsets.all(kDefaultPadding/2),
                        decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(kDefaultPadding),
                          boxShadow: [
                            BoxShadow(
                              color: kTextLightColor,
                              blurRadius: 2.0,
                            )
                          ]
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(result[index].subjectName,
                                  textAlign: TextAlign.start,
                                 style: TextStyle(fontSize: 18,color: kOtherColor),
                                 // style: Theme.of(context).textTheme.subtitle2,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '${ result[index].obtainedmarks}/ ${result[index].totalmarks}',
                                      style: TextStyle(fontSize: 30,color: kTextLightColor),
                                     // result[index].obtainedmarks.toString(),style: TextStyle(fontSize: 30,color: kOtherColor),
                                    ),
                                    Stack(
                                      children: [
                                        Container(
                                          width: result[index].totalmarks.toDouble(),
                                          height: 20,
                                          decoration: BoxDecoration(
                                            color: Colors.grey[700],
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(kDefaultPadding),
                                              bottomRight: Radius.circular(kDefaultPadding),
                                            )
                                          ),
                                        ),
                                        Container(
                                          height: 20,
                                          width: result[index].obtainedmarks.toDouble(),
                                          decoration: BoxDecoration(
                                            color: result[index].grade =='D'? kErrorBorderColor:kOtherColor,
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(kDefaultPadding),
                                                bottomRight: Radius.circular(kDefaultPadding),
                                              )
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(result[index].grade,
                                      textAlign: TextAlign.start,
                                      style: Theme.of(context).textTheme.subtitle2!.copyWith(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 15,
                                      color: kOtherColor,
                                    ),)
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      );

                      }
                  ),
                )),
          ],
        ),
    );
  }
}
