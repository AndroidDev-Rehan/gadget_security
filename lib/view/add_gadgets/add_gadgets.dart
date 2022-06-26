import 'package:flutter/material.dart';
import 'package:gadget_security/view/global_widgets/dropdown_button.dart';
import 'package:gadget_security/view/global_widgets/textfieldwithIcon.dart';
import 'package:gadget_security/view/home/widgets/custom_grey_container.dart';

import '../home/widgets/custom_button.dart';

class AddGadgetScreen extends StatelessWidget {
  const AddGadgetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text("Gadget Security"),
        centerTitle: false,
        actions: const [Icon(Icons.more_vert)],
      ),
      body: ListView(
        children: [
         SizedBox(height: 20,),
         Padding(
           padding: const EdgeInsets.only(left: 20.0, right: 8),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text("ACC: A001AAA19A", style: TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, fontSize: 18),),
               Icon(Icons.mark_email_unread_rounded,color: Colors.green,size: 30,)

             ],
           ),
         ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children:  [
              TextFieldAndIcon(hintText: "Product Name",),
                SizedBox(height: 20,),
                TextFieldAndIcon(hintText: "Product Type",),
                SizedBox(height: 20,),
                TextFieldAndIcon(hintText: "Enter Serial Number",),
                SizedBox(height: 20,),
                TextFieldAndIcon(hintText: "Enter Model",),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(
                      child: Container(

                          child: MyDropDownButton(dropdownValue: "Year", items: ["Year","1999"],),
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(8)
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 8),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Expanded(
                      child: Container(
                        child: MyDropDownButton(dropdownValue: "Colour", items: ["Colour","Red"],),
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(8)
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 8),
                      ),
                    )
                    // MyDropDownButton(dropdownValue: "Colour", items: ["Colour","Red"],)
                  ],
                ),
                SizedBox(height: 20,),
                Row(children: [
                  Icon(Icons.circle_outlined),
                  SizedBox(width: 6,),
                  Text('IMEI 1', style: TextStyle(fontSize: 16),),
                  SizedBox(width: 10,),
                  Expanded(child: TextFieldAndIcon(hintText: "ex: 00000000000",))
                ],),
                SizedBox(height: 20,),
                Row(children: [
                  Icon(Icons.circle_outlined),
                  SizedBox(width: 6,),
                  Text('IMEI 2', style: TextStyle(fontSize: 16),),
                  SizedBox(width: 10,),
                  Expanded(child: TextFieldAndIcon(hintText: "ex: 00000000000",))
                ],),

                SizedBox(height: 20,),
                TextFieldAndIcon(hintText: "MAC. Address",),
                SizedBox(height: 20,),
                TextFieldAndIcon(hintText: "Year of Ownership",),
                SizedBox(height: 20,),
                buttonsRow()

              ],),
          )

        ],
      ),
    );
  }

  buttonsRow(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: CustomElevatedButton(
              roundness: 10,
                color: Colors.red,
                text: "Clear", onPressed: (){
            }),
          ),
          const SizedBox(width: 40,),
          Expanded(
            child: CustomElevatedButton(
              roundness: 10,
              color: Colors.green,
              onPressed: (){
              },
              text: "SUBMIT",
            ),
          )

        ],),
    );
  }
}
