import 'package:flutter/material.dart';
import 'package:gadget_security/theme/darktheme.dart';
import 'package:gadget_security/theme/lighttheme.dart';
import 'package:gadget_security/view/add_gadgets/add_gadgets.dart';
import 'package:gadget_security/view/auth/login.dart';
import 'package:gadget_security/view/auth/signup.dart';
import 'package:gadget_security/view/home/home_screen.dart';
import 'package:gadget_security/view/profile/profilepage.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: light,
      darkTheme: dark,
      themeMode: ThemeMode.light,
      home:  ProfilePage(),
    );
  }
}

