
import 'package:brain_school_starter/widget/login_screen/login_continer.dart';
import 'package:brain_school_starter/widget/login_screen/login_textbutton.dart';
import 'package:flutter/material.dart';

import '../../constants/colors_constants.dart';
import '../../constants/image_constants.dart';
import '../../componets/app_input_textfrom_field.dart';
import '../../componets/custom_button.dart';
import '../../view_model/database_helper_class/database_helper.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  TextEditingController _emailController=TextEditingController();

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
            Logincintiner(title: "Sign to  continue",),
           
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
                    controller: _emailController,
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
                     keyboardType:TextInputType.emailAddress ,
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
                    ), keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(height:kDefaultPadding ,),

                  // CustomButton(
                  //   text: "SIGN IN",

                  //   onTop: ()async{
                  //     if (_formKey.currentState!.validate()) {
                  //       Navigator.pushNamed(context, "/home");
                  //       print("sign button clicked");

                  //     }

                  //   },

                  // ),
                 

                    SizedBox(height:kDefaultPadding ,),

                    
               ElevatedButton(
                  onPressed: _submitfrom, 
                  child: Text("sign up")),
                    // loginTextbutton(title: "sign up", onpressed: (){
                    //   Navigator.pushNamed(context, "/signup");
                    // }),

                       TextButton(
                        onPressed: (){
                          Navigator.pushNamed(context, "/signup");
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
                    
                   

                ],
              ),
            )
          ],
        ),
      ),
    );
  }

   void _submitfrom()async{
  if(_formKey.currentState!.validate()){
    // Navigator.popAndPushNamed(context, "/signup");
    
  final DataBase=  await DatabaseHelper.internal().getDatabase();
    final instUser = "INSERT INTO user(name, email,phone,address ) VALUES('${_emailController.text}' ,'${  _userPasswordController.text}')";
   await DataBase.execute(instUser);

   // Get the records
List<Map> list = await DataBase.rawQuery('SELECT * FROM user');
print("saved user list$list");

  }
}
}