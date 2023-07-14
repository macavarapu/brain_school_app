
import 'package:flutter/material.dart';

import '../../constants/colors_constants.dart';
import '../../constants/image_constants.dart';
import '../../componets/app_input_textfrom_field.dart';
import '../../componets/custom_button.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  TextEditingController _useremail=TextEditingController();

  TextEditingController _userPasswordController = TextEditingController();

  //TextEditingController _categoryController =TextEditingController();
  final _formKey=GlobalKey<FormState>();

  bool _isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  kPrimaryColor,
      body: Form(
        key: _formKey,
        child: ListView(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/2.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(

                    ImageConstants.splash,
                    height: 150,width: 150,),
                  SizedBox(height: kDefaultPadding / 2, ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Hi",
                        style: Theme.of(context).textTheme.bodyText1!
                            .copyWith(
                          color: kTextWhiteColor,
                          fontSize: 35,
                          // fontWeight: FontWeight.w200,

                        ),


                      ),
                      Text("Student",
                        style: Theme.of(context).textTheme.bodyText1!
                            .copyWith(
                          color: kTextWhiteColor,
                          fontSize: 35,
                          // fontWeight: FontWeight.w100,

                        ),
                      ),
                    ],
                  ),
                  SizedBox(height:kDefaultPadding /6,),
                  Text("Sign to  continue",
                    style: Theme.of(context).textTheme.bodyText1!
                        .copyWith(
                      color: kTextWhiteColor,
                      fontSize: 25,
                      // fontWeight: FontWeight.w100,

                    ),

                  )
                ],

              ),

            ),

            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular( kDefaultPadding *3),
                  topRight: Radius.circular( kDefaultPadding *3),
                ),
                color: kTextWhiteColor ,
              ),
              child: Column(
                children: [
                  SizedBox(height:kDefaultPadding ,),
                  AppInputTextField(
                    controller: _useremail,
                    validator: (value) {
                      if(value!.isEmpty){
                        return "Please enter user email";
                      }else{
                        final bool emailValid =
                        RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(value);
                        return emailValid ? null :"please enter valid email";
                      }
                    },
                    labelText: "please enter user email",
                    hintText: "Enter Email",
                    prefixIcon: Icon(Icons.message),
                  ),
                  AppInputTextField(
                    controller: _userPasswordController,
                    obscureText: _isObscureText,
                    validator: (value) {
                      if(value!.isEmpty){
                        return "Please enter user password";
                      }else{
                        return null;
                      }
                    },
                    labelText: "please enter user password",
                    hintText: "correct password",

                    suffixIcon: GestureDetector(
                      onTap: () {

                        setState(() {
                          _isObscureText = !_isObscureText;
                        });
                        // _isObscureText = !_isObscureText;
                        print("data changed $_isObscureText");
                      },
                      child: _isObscureText
                          ? Icon(Icons.visibility_off)
                          : Icon(Icons.visibility),
                    ),
                  ),
                  SizedBox(height:kDefaultPadding ,),

                  CustomButton(
                    text: "SIGN IN",

                    onTop: ()async{
                      if (_formKey.currentState!.validate()) {
                        Navigator.pushNamed(context, "/home");
                        print("sign button clicked");

                      }

                    },

                  ),

                  //  SizedBox(height:kDefaultPadding ,),
                  //  Align(
                  //   alignment: Alignment.bottomRight,
                  //    child: Text("forgot password",
                  //    textAlign: TextAlign.end,
                  //    style: TextStyle(fontSize: 15,color: kPrimaryColor ),
                  //    ),
                  //  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}