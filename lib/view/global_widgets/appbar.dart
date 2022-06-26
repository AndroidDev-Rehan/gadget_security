import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/color.dart';




  AppBar CustomAppBar() {
    return AppBar(
      backgroundColor: Get.theme.primaryColor,
      title: const Text("Gadget Security"),
      centerTitle: false,
      actions: const [Icon(Icons.more_vert)],
    );

  }


