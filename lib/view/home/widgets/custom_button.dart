import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../utils/color.dart';
import '../../auth/login.dart';

class CustomElevatedButton extends StatelessWidget {

  final String text;
  final Function onPressed;
  final Color? color;
  final double? roundness;

  const CustomElevatedButton({Key? key, required this.text, required this.onPressed, this.color, this.roundness,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: ElevatedButton(
          onPressed: (){
            onPressed();
          },
          child: Text(text, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
          style: ElevatedButton.styleFrom(
            primary: color ?? Theme.of(context).primaryColor,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(roundness ?? 20))
            // fixedSize: const Size(double.infinity, 50),
          )
      ),
    );
  }
}
