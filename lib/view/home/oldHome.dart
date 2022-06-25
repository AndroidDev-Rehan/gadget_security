import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gadget_security/models/product.dart';
import 'package:gadget_security/view/auth/login.dart';
import 'package:gadget_security/view/auth/signup.dart';
import 'package:gadget_security/view/global_widgets/gadget_tile.dart';
import 'package:get/get.dart';
import '../../utils/color.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import '../global_widgets/drawer.dart';

class OldHomeScreen extends StatelessWidget {
  OldHomeScreen({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
          appBar: AppBar(
            titleSpacing: 0.00,
            brightness: Brightness.dark,
            backgroundColor: ColorResources.COLOR_PRIMARY,
            centerTitle: true,
            title: const Text(
              "Home",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                // fontFamily: 'Semibold',
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            elevation: 0.0,
            leading: Builder(
              builder: (context) => IconButton(
                icon: Icon(
                  MaterialCommunityIcons.text,
                  color: Colors.white,
                ),
                onPressed: () => Scaffold.of(context).openDrawer(),
              ),
            ),
          ),
          key: scaffoldKey,
          drawer: MyDrawer(),
          body: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 16),
                decoration: const BoxDecoration(
                    // color: Colors.red.withOpacity(0.8),
                    // gradient: LinearGradient(
                    //   colors: [
                    //     ColorResources.COLOR_PRIMARY.withOpacity(0.7),
                    //     ColorResources.COLOR_PRIMARY,
                    //   ],
                    // ),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40))),
                child: CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 6),
                    autoPlayAnimationDuration: Duration(seconds: 1),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    // height: 300.0,
                    enlargeCenterPage: true,
                    // enlargeStrategy: CenterPageEnlargeStrategy.height,
                    viewportFraction: 0.7,
                    // aspectRatio: 2,
                    initialPage: 0,
                    clipBehavior: Clip.hardEdge,
                  ),
                  items: [1, 2, 3, 4, 5].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Card(
                          color: Colors.white,
                          elevation: 10,
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 0.0),
                            decoration: BoxDecoration(
                                // color: Colors.ambe
                                ),
                            child: Image.asset(
                              "assets/images/app_dev.jpeg",
                              height: 300,
                            ),
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              _buildSignInSignUpRow(),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding:
                    EdgeInsets.only(top: 20, right: 20, left: 10, bottom: 20),
                margin: EdgeInsets.only(left: 20, right: 20),
                decoration: new BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: new BorderRadius.all(new Radius.circular(5))),
                child: Row(
                  children: <Widget>[
                    const Flexible(
                      child: TextField(
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Regular',
                            fontSize: 12),
                        cursorColor: Colors.black,
                        decoration: InputDecoration.collapsed(
                            hintText: 'Search anything',
                            hintStyle:
                                TextStyle(fontSize: 12, fontFamily: 'Regular')),
                      ),
                    ),
                    Icon(Icons.search)
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Expanded(
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (BuildContext context,int index){
                      return const EquipmentTile(product: Product(id: "id", title: "Shoes", description: "description"), addOn: false);
                    }
                    ),
              )
            ],
          )),
    );
  }

  _buildSignInSignUpRow(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
        Expanded(
          child: ElevatedButton(
              onPressed: (){
                Get.to(LoginPage());
              },
              child: Text("LOGIN", style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
              style: ElevatedButton.styleFrom(
                primary: ColorResources.COLOR_PRIMARY,

                // fixedSize: const Size(double.infinity, 50),
              )
          ),
        ),
        SizedBox(width: 40,
        child: Center(child: Text("OR")),
        ),
        Expanded(
          child: ElevatedButton(

              onPressed: (){
                Get.to(SignUpScreen());
              },
              child: Text("REGISTER", style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
              style: ElevatedButton.styleFrom(
                  // fixedSize: const Size(double.infinity, 50),
                  primary: ColorResources.COLOR_SECONDARY,

              )
          ),
        )

      ],),
    );
  }


}
