import 'package:brain_school_starter/componets/app_input_textfrom_field.dart';
import 'package:brain_school_starter/widget/login_screen/login_textbutton.dart';
import 'package:flutter/material.dart';

import '../../constants/colors_constants.dart';
import '../../view_model/database_helper_class/database_helper.dart';
import '../../widget/login_screen/login_continer.dart';
import '../../componets/custom_button.dart';


class Signupscreen extends StatefulWidget {
  const Signupscreen({super.key});

  @override
  State<Signupscreen> createState() => _SignupscreenState();
}

class _SignupscreenState extends State<Signupscreen> {
  TextEditingController _firstNameController = TextEditingController();
  TextEditingController _lastNameController =TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  //TextEditingController _addressController = TextEditingController();
 

  //TextEditingController _categoryController =TextEditingController();
  final _formKey = GlobalKey<FormState>();

  // bool _isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text("REGISTER "),
        backgroundColor: kPrimaryColor,
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          children: [
            Logincintiner(
              title: "Sign to  continue",
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(kDefaultPadding * 3),
                  topRight: Radius.circular(kDefaultPadding * 3),
                ),
                color: kTextWhiteColor,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: kDefaultPadding,
                  ),
                  AppInputTextField(
                    controller: _firstNameController,
                    hintText: 'Enter name ',
                    prefixIcon: Icon(
                      Icons.person,
                    ),
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                        //allow upper and lower case alphabets and space
                        return "Enter Correct Name";
                      } else {
                        return null;
                      }
                    },
                    labelText: 'Please enter first Name',
                  ),
                  AppInputTextField(
                    controller: _lastNameController,
                    labelText: "please enter last name",
                    hintText: "Enter last name",
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                        //allow upper and lower case alphabets and space
                        return "Enter Correct Name";
                      } else {
                        return null;
                      }
                    },
                  ),
                  AppInputTextField(
                    controller: _emailController,
                     labelText: "please enter user email",
                    hintText: "Enter Email",
                    prefixIcon: Icon(Icons.message),
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter user email";
                      } else {
                        final bool emailValid = RegExp(
                                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(value);
                        return emailValid ? null : "please enter valid email";
                      }
                    },
                   
                  ),
                  AppInputTextField(
                    controller: _phoneController,
                    labelText: "pleas enter valide phone number",
                      hintText: "Phone Number",
                       keyboardType: TextInputType.phone,
                     validator: (value) {
                       if (value!.length !=10) {
                       return 'Mobile Number must be of 10 digit';
                       // return 'Please enter a valid phone number';
                        }
                         return null;
                          }, 
                     
                      ),
                       SizedBox(height:kDefaultPadding ,),


               ElevatedButton(
                  onPressed: _submitfrom, 
                  child: Text("save data")),


                  // CustomButton(
                  //   text: "SIGN up",

                  //   onTop: ()async{
                  //     if (_formKey.currentState!.validate()) {
                  //       Navigator.pushNamed(context, "/home");
                  //       print("sign button clicked");

                  //     }

                  //   },

                  // ),
                 // loginTextbutton(title: "login", onpressed: (){}),

                       TextButton(
                        onPressed: (){
                          Navigator.pushNamed(context, "/login");
                        },
                         child:   RichText(text: TextSpan(
                        text: "if you don't have  an account?",
                        style: TextStyle(
                          color: kTextBlackColor,
                        ),
                        children: [

                          TextSpan(
                              text: "   Sign up",
                              style: TextStyle(
                                fontSize: 20,
                                color:kTextBlackColor,
                                //fontWeight: FontWeight.bold
                              )
                          )
                        ]
                    )),
                         ),
                    
                 


                 // loginTextbutton(title: "singam", onpressed: (){}),
                 // loginTextbutton(title: " Sign up", onpressed: (){}),
                   
                ],
                
              ),
            ),
          ],
        ),
      ),
    );
  }

    void _submitfrom()async{
  if(_formKey.currentState!.validate()){
    // Navigator.popAndPushNamed(context, "/signup");
    
  final DataBase=  await DatabaseHelper.internal().getDatabase();
    final instUser = "INSERT INTO user(name, email,phone,address ) VALUES('${ _firstNameController.text}','${_emailController.text}' ,'${_phoneController.text}','${  _lastNameController.text}')";
   await DataBase.execute(instUser);

   // Get the records
List<Map> list = await DataBase.rawQuery('SELECT * FROM user');
print("saved user list$list");

  }
}
}















//    void _submitForm() async {
//     if (_formKey.currentState!.validate()) {
//       final dataBase = await DatabaseHelper.internal().getDatabase();
//       final insetUser =
//           "INSERT INTO user(name, email, phone, address) VALUES('${_firstNameController.text}',   '${_lastNameController.text} '${_emailController.text}', '${_phoneController.text}',";
//       await dataBase.execute(insetUser);
//       //

//       // Get the records
//       List<Map> list = await dataBase.rawQuery('SELECT * FROM user');
//       print("saved users list $list");
//     }
//   }
// }

// class DatabaseHelper {
//   static internal() {}
// }
