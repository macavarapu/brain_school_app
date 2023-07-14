
import 'package:flutter/material.dart';
import '../../constants/colors_constants.dart';
import '../../constants/image_constants.dart';
import '../../widget/home_screen/home_card.dart';
import '../../widget/home_screen/student_class.dart';
import '../../widget/home_screen/student_data.dart';
import '../../widget/home_screen/student_data_card.dart';
import '../../widget/home_screen/student_picture.dart';
import '../../widget/home_screen/student_year.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Column(children: [
        Container(
          height: MediaQuery.of(context).size.height / 2.5,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      StudentName(studentname: "Ayesha"),

                      SizedBox(
                        height: kDefaultPadding / 2,
                      ),
                      Studentclass(studentclass: "Class X-II A Roll no 12",),
                      SizedBox(
                        height: kDefaultPadding / 2,
                      ),
                      Studentyear(studentyear: "2020-2023",),

                    ],
                  ),
                  SizedBox(
                    height: kDefaultPadding / 6,
                  ),
                  Studentpicture(picaddress: ImageConstants.student_profile,
                      onpressed: (){
                        Navigator.popAndPushNamed(context, "/myprofile");
                      }
                  ),

                ],
              ),
              SizedBox(
                height: kDefaultPadding,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  StudentDatacard(title:"Attendance",  value:"90.02%",  onpressed:(){}),
                  StudentDatacard(title: "Fees Due", value:  "600\$", onpressed: (){
                    Navigator.pushNamed(context, "/feesscreen");
                  }),

                ],
              )
            ],
          ),
        ),

        Expanded(
          child: Container(
            color: Colors.transparent,
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: kOtherColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(kDefaultPadding * 3),
                  topRight: Radius.circular(kDefaultPadding * 3),
                ),
              ),
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Homecard(
                        onpressed: (){},
                        icon: ImageConstants.quiz,
                        title: "Take Quiz",
                      ),
                      Homecard(
                        onpressed: (){
                          Navigator.pushNamed(context, "/assignment");
                        },
                        icon: ImageConstants.assignment,
                        title: "Assignment",
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Homecard(
                        onpressed: (){},
                        icon: ImageConstants.holiday,
                        title: "Holidays",
                      ),
                      Homecard(
                        onpressed: (){},
                        icon: ImageConstants.timetable ,
                        title: "Timetable ",
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Homecard(
                        onpressed: (){
                          Navigator.pushNamed(context, "/result");
                        },
                        icon: ImageConstants.result,
                        title: "Result",
                      ),
                      Homecard(
                        onpressed: (){
                          Navigator.pushNamed(context, "/datesheet");
                        },
                        icon: ImageConstants.datesheet,
                        title: "Datesheet",
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Homecard(
                        onpressed: (){},
                        icon: ImageConstants.ask,
                        title: "Ask",
                      ),
                      Homecard(
                        onpressed: (){},
                        icon: ImageConstants.gallery,
                        title: "Gallery",
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Homecard(
                        onpressed: (){},
                        icon: ImageConstants.event,
                        title: "Leave\n Aplication",
                      ),
                      Homecard(
                        onpressed: (){},
                        icon: ImageConstants.lock ,
                        title: "Change\n Password",
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Homecard(
                        onpressed: (){},
                        icon: ImageConstants.event,
                        title: "Event",
                      ),
                      Homecard(
                        onpressed: (){},
                        icon: ImageConstants.logout,
                        title: "Logout",
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}