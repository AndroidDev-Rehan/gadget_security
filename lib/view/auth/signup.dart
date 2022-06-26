import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:gadget_security/utils/color.dart';
import 'package:gadget_security/view/auth/login.dart';
import 'package:gadget_security/view/global_widgets/appbar.dart';
import 'package:get/get.dart';


class SignUpScreen extends StatelessWidget {

  SignUpScreen({Key? key}) : super(key: key);

  final GlobalKey<FormState> _signUpFormKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    log('/////////////////////////////////');

    return SafeArea(
      child: OrientationBuilder(
          builder: (context, snapshot) {
            return Scaffold(
              appBar: CustomAppBar(),
              body: SingleChildScrollView(
                child: SizedBox(
                  width: Get.width,
                  height: Get.height-80,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:  [

                        signInContainer(context),
                        const SizedBox(height: 20,),
                        SizedBox(
                          width: double.infinity,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("I already have an account.  ", style: TextStyle(color: Colors.black.withOpacity(0.7)),),
                              InkWell(
                                  onTap: (){
                                    Get.to(LoginPage());
                                  },
                                  child:Text("Sign In", style: TextStyle(color:Get.theme.primaryColor, fontWeight: FontWeight.w600),)),
                            ],
                          ),
                        )
//                  belowContainer(),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }
      ),
    );
  }

  signInContainer(BuildContext context){


    return Material(
      elevation: 10,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: const EdgeInsets.fromLTRB(16, 24, 16, 16),
        decoration:  BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),

        ),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: const [
                  Text("Create New", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),),
                ],
              ),
              const SizedBox(height: 7,),
              Row(
                children: const [
                  Text("Account", style:TextStyle(fontSize: 22, fontWeight: FontWeight.w600)),
                ],
              ),
              const SizedBox(height: 20,),
              textFieldsColumn(),
//              const SizedBox(height: 10,),
              const SizedBox(height: 30,),
              signUpButton("Sign Up")
//              forgotPassword(),
//              loginButton("Login"),
            ],
          ),
        ),
      ),
    );
  }

  textFieldsColumn(){
    return Form(
      key: _signUpFormKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          customTextField2("Enter Email", TextEditingController() , Icons.email_outlined,
                  (String? value){
                if (value == null) {
                  return 'Email is required';
                }
                if (value.isEmpty) {
                  return 'Email is required';
                }
                if (!GetUtils.isEmail(value)) {
                  return "Invalid Format";
                }
                return null;
              }
          ),
          customTextField2("Enter UserName", TextEditingController(), Icons.person,
                (String? value){
              if (value == null) {
                return 'User Name is required';
              }
              return null;
            },
          ),
          customTextField2("Enter Phone Number", TextEditingController(), Icons.phone,
                  (String? value){
                if (value == null) {
                  return 'Phone Number is required';
                }
                if (value.length < 11) {
                  return 'Invalid Number';
                }
                return null;
              },keyboardType: TextInputType.number
          ),
          customTextField2("Enter Password",TextEditingController(), Icons.lock,
                  (String? value) {
                if (value==null) {
                  return 'password is required';
                }
                if(value.isEmpty){
                  return 'password is required';
                }
                return null;
              }

          ),

        ],
      ),
    );
  }

  customTextField2(String hint,TextEditingController controller, IconData prefixIcon, FormFieldValidator<String?> validator, {TextInputType? keyboardType} ){
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: TextFormField(
        keyboardType: keyboardType ?? TextInputType.text,
        controller: controller,
        validator: validator,
        decoration: InputDecoration(
          hintText: hint,
          filled: true,
          border: InputBorder.none,
//          prefix: Icon(prefixIcon),
          prefixIcon: Icon(prefixIcon),
        ),
      ),
    );
  }



  signUpButton(String text){


    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(

          onPressed: (){

            if(_signUpFormKey.currentState!.validate() ) {

            }
          },
          child: Text(text, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
          style: ElevatedButton.styleFrom(
            fixedSize: const Size(double.infinity, 50),
            primary: Get.theme.primaryColor
          )
      ),
    );
  }

}