import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gadget_security/view/global_widgets/appbar.dart';
import 'package:get/get.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipPath(
              clipper: CustomClipperImage(),
              child: Container(
                height: Get.height / 3,
                width: Get.width,
                color: Get.theme.primaryColor,
                padding: EdgeInsets.only(left: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Neo B. Kgotlaetsho',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '+26771535399',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Plot 2208, ARea W.',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '+Francistown, BW',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'ID: 004210615',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    )
                  ],
                ),
              ),
            ),
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.all(15),
                  padding: EdgeInsets.only(left: 10),
                  height: 40,
                  decoration: new BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius:
                          new BorderRadius.all(new Radius.circular(25))),
                  child: TextFormField(
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Regular',
                        fontSize: 12),
                    cursorColor: Colors.black,
                    decoration: new InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.mic,
                          color: Get.theme.primaryColor,
                        ),
                        hintText: 'Search IMEI',
                        hintStyle: TextStyle(
                            fontSize: 15,
                            fontFamily: "Regular",
                            color: Colors.grey)),
                  ),
                ),
                Positioned(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Get.theme.primaryColor, shape: BoxShape.circle),
                    height: 50,
                    width: 50,
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                  right: 10,
                  top: 5,
                )
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Your Gadgets:',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Get.theme.primaryColor),
                  ),
                  Icon(
                    Icons.add,
                    color: Get.theme.primaryColor,
                    size: 35,
                  )
                ],
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Material(

                      elevation: 20,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '${index} Samsung Galaxy S4',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Column(
                              children: [
                                Icon(Icons.delete),
                                SizedBox(height: 5,),
                                Icon(Icons.app_registration_sharp),
                                SizedBox(height: 5,),
                                Icon(Icons.share)
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}

class CustomClipperImage extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height / 1.2);
    var firstControlPoint = Offset(size.width / 8, size.height);
    var firstEndPoint = Offset(size.width / 4, size.height / 1.2);
    var secondControlPoint =
        Offset(size.width / 4 + (size.width / 8), size.height / 1.4);
    var secondEndPoint = Offset(size.width / 1.95 - 5, size.height / 1.15);
    var thirdControlPoint =
        Offset(size.width / 2 + size.width / 8, size.height);
    var thirdEndPoint =
        Offset(size.width / 2 + size.width / 4, size.height / 1.2);
    var fourthControlPoint =
        Offset(size.width - (size.width / 8), size.height / 1.4);
    var fourthEndPoint = Offset(size.width, size.height / 1.1);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    path.quadraticBezierTo(thirdControlPoint.dx, thirdControlPoint.dy,
        thirdEndPoint.dx, thirdEndPoint.dy);
    path.quadraticBezierTo(fourthControlPoint.dx, fourthControlPoint.dy,
        fourthEndPoint.dx, fourthEndPoint.dy);

    path.lineTo(size.width, size.height / 1.2);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}
