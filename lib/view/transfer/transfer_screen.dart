import 'package:flutter/material.dart';
import 'package:gadget_security/utils/color.dart';
import 'package:gadget_security/view/home/widgets/custom_button.dart';

import '../global_widgets/dropdown_button.dart';
import '../global_widgets/textfieldwithIcon.dart';

class TransferScreen extends StatelessWidget {
  const TransferScreen({Key? key}) : super(key: key);

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
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Hamza Arshad", style: TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, fontSize: 18, color: Color(0xFF052077)),),
                    Icon(Icons.mark_email_unread_rounded,color: Colors.green,size: 30,)

                  ],
                ),
                Text("+92 324 4564754",style: TextStyle(color: Colors.grey[700], fontSize: 18, fontStyle: FontStyle.italic),),
                Text("Plot 2208, Area W,",style: TextStyle(color: Colors.grey[700], fontSize: 18, fontStyle: FontStyle.italic),),
                Text("Franciston, BW",style: TextStyle(color: Colors.grey[700], fontSize: 18, fontStyle: FontStyle.italic),),
                Text("ID : 01273941",style: TextStyle(color: Colors.grey[700], fontSize: 18, fontStyle: FontStyle.italic),),

              ],
            ),
          ),
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children:  [
                Align(

                  child: CustomElevatedButton(text: "View Gadgets", onPressed: (){}, color: Colors.green),
                  alignment: Alignment.centerRight,
                ),
                SizedBox(height: 20,),
                TextFieldAndIcon(hintText: "Search Anything", iconData: Icons.search),
                SizedBox(height: 20,),
                TextFieldAndIcon(hintText: "Account Number / Names",),
                // SizedBox(height: 20,),
                // TextFieldAndIcon(hintText: "Enter Serial Number",),
                // SizedBox(height: 20,),
                // TextFieldAndIcon(hintText: "Enter Model",),
                SizedBox(height: 20,),
                Row(

                  children: [
                    Expanded(
                      child: Container(

                        child: MyDropDownButton(dropdownValue: "Immediate", items: ["Immediate","Other"],),
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(8)
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 8),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Expanded(
                      child: Icon(Icons.calendar_today, color: Theme.of(context).primaryColor,),
                    )
                    // MyDropDownButton(dropdownValue: "Colour", items: ["Colour","Red"],)
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      flex: 1,
                        child: Center(child: checkBox("Male     "))),
                  Expanded(
                      flex: 2,
                      child: Center(child: checkBox("National ID Card  ", square: true)))
                  // checkBox("National ID Card", square: true)
                ],),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                        flex: 1,
                        child: Center(child: checkBox("Female"))),
                    Expanded(
                        flex: 2,
                        child: Center(child: checkBox("Passport Number", square: true)))
                    // checkBox("National ID Card", square: true)
                  ],),
                SizedBox(height: 20,),
                TextFieldAndIcon(hintText: "Identification No",),
                SizedBox(height: 20,),
                CustomElevatedButton(text: "   Transfer   ", onPressed: (){}),
                SizedBox(height: 20,),
              ],),
          )

        ],
      ),
    );
  }

  Widget checkBox(String text, {bool square = false}){
    return                 Row(
      mainAxisSize: MainAxisSize.min,
      children: [
      Icon( square ? Icons.crop_square_sharp : Icons.circle_outlined),
      SizedBox(width: 6,),
      Text(text, style: TextStyle(fontSize: 16),),
      // SizedBox(width: 10,),
      // Expanded(child: TextFieldAndIcon(hintText: "ex: 00000000000",))
    ],);
  }
}
