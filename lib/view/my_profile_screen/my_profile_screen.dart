
import 'package:flutter/material.dart';
import '../../constants/colors_constants.dart';
import '../../constants/image_constants.dart';
import '../../widget/home_screen/student_class.dart';
import '../../widget/home_screen/student_picture.dart';
import '../../widget/my_profile_screen/profile_detailcolum.dart';
import '../../widget/my_profile_screen/profile_detailrow.dart';

class Myprofile extends StatelessWidget {
  const Myprofile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  kPrimaryColor,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text("My Profile"),
        actions: [
          InkWell(
            onTap: (){},
            child: Container(
              padding: EdgeInsets.only(right: kDefaultPadding/2),
              child: Row(
                children: [
                  Icon(Icons.report_gmailerrorred_outlined,size: 25,),
                  kHalfSizedBox,

                  Text("Report",style:TextStyle(color: kOtherColor),
                    //Theme.of(context).textTheme.subtitle1,
                  ),
                ],

              ),
            ),
          )
        ],
        backgroundColor:  kPrimaryColor,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: kTextWhiteColor ,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(kDefaultPadding*2),
                      bottomRight: Radius.circular(kDefaultPadding*2),
                    )
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Studentpicture(picaddress: ImageConstants.student_profile,  onpressed: (){}),
                    kWidthSizedBox,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Ayesha Mirza",style: TextStyle(fontSize: 25,color: kOtherColor),),
                        // StudentName(studentname: "Ayesha"),
                        Studentclass(studentclass: "Class X-II A Roll no 12",),
                      ],
                    )
                  ],
                ),
              ),
              sizedBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ProfileDetailRow(title:  "Register number", value: "2020-ASDF-2021",),
                  ProfileDetailRow(title:  "Academic year", value: "2020-2021",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ProfileDetailRow(title:  "Admission Class", value: "X-II",),
                  ProfileDetailRow(title:  "Academic Number", value: "000126",),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ProfileDetailRow(title:  "Date of Admission", value: "1 Aug, 2020",),
                  ProfileDetailRow(title:  "Date of Birth", value: "3 may 1998",),
                ],
              ),
              ProfileDetailColum(title:"A Class" , value: "Ahsha"),
              ProfileDetailColum(title:"Email" , value: "Ahsha@gmail.com"),
              ProfileDetailColum(title:"Father Name" , value: "John Mirza"),
              ProfileDetailColum(title:"Mother Name" , value: "Angelica Mirza"),
              ProfileDetailColum(title:"Phone Number" , value: "+831348638"),

            ],
          ),
        ),
      ),
    );
  }
}