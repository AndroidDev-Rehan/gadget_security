import 'package:flutter/material.dart';
import 'package:gadget_security/view/home/widgets/custom_button.dart';
import 'package:gadget_security/view/home/widgets/custom_grey_container.dart';
import 'package:gadget_security/view/home/widgets/textfieldwithIcon.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../utils/color.dart';
import '../auth/login.dart';
import '../auth/signup.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text("Gadget Security"),
        centerTitle: false,
        actions: const [Icon(Icons.more_vert)],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 16),
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TextFieldAndIcon(iconData: Icons.search,),
            const SizedBox(height: 30,),
            const Text(" Owner:",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            const SizedBox
              (height: 20,),
            CustomGreyContainer(
              child: Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Column(
                  children: [
                    titleAndTextRow("Name", "Hidden Codz"),
                    titleAndTextRow("Address", "Sunny Park Fatehgarh Mughalpura Lahore",divider: false)
                  ],
                ),
              ),
            ),
            const SizedBox(height: 50,),
            const Text(" Product:",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            const SizedBox(height: 20,),
            CustomGreyContainer(
              child: Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Column(
                  children: [
                    titleAndTextRow("Name", "iPhone 13 Pro Max"),
                    titleAndTextRow("Type", "00000000"),
                    titleAndTextRow("Model", "00000000"),
                    titleAndTextRow("Serial", "00000000"),
                    titleAndTextRow("IMEI", "00000000", divider: false),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 40,),
            _buildSignInSignUpRow()


          ],
        ),
      ),
    );
  }

  titleAndTextRow(String title, String text, {bool divider = true}){
    return                   Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Expanded(
                  flex: 2,
                  child: Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),)),
              Expanded(
                  flex: 4,
                  child: Text(text, style: TextStyle(fontWeight: FontWeight.normal, fontSize: 17),))

            ],
          ),
          divider?
          Divider() : SizedBox()
        ],
      ),
    );

  }


  _buildSignInSignUpRow(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: CustomElevatedButton(text: "LOGIN", onPressed: (){
              Get.to(LoginPage());
            }),
          ),
          const SizedBox(width: 40,
            child: Center(child: Text("OR")),
          ),
          Expanded(
            child: CustomElevatedButton(
              color: Colors.green,
              onPressed: (){
                Get.to(SignUpScreen());
              },
              text: "REGISTER",
            ),
          )

        ],),
    );
  }


}
