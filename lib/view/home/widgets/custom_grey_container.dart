import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomGreyContainer extends StatelessWidget {

  final Widget? child;

  const CustomGreyContainer({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(10),
      elevation: 5,
      child: Container(
        padding: const EdgeInsets.all(16),
        child: child,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.125),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
