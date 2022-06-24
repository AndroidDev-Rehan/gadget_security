import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/color.dart';

class MyDrawer extends StatelessWidget {


  // AuthController authController = Get.find();

  MyDrawer();
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: ColorResources.COLOR_PRIMARY,
        child: Column(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.white,),
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("authController.userModel!.name!", style: TextStyle(fontSize: 16),),
                accountEmail: Text("FirebaseAuth.instance.currentUser!.email!",style: TextStyle(fontSize: 16)),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/person.png",),
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const ListTile(
                      leading: Icon(
                        CupertinoIcons.home,
                        color: ColorResources.COLOR_PRIMARY,
                      ),
                      title: Text(
                        "Home",
                        textScaleFactor: 1.5,
                        style: TextStyle(
                          color: ColorResources.COLOR_PRIMARY,
                        ),
                      ),
                    ),
                    true?ListTile(onTap: (){
                      // Get.to(()=>AddEventPage());
                      },
                      leading: const Icon(
                        CupertinoIcons.profile_circled,
                        color: ColorResources.COLOR_PRIMARY,
                      ),
                      title: const Text(
                        "Add Event ",
                        textScaleFactor: 1.5,
                        style: TextStyle(
                          color: ColorResources.COLOR_PRIMARY,
                        ),
                      ),
                    ):SizedBox(),
                    true?ListTile(onTap: (){
                      // Get.to(()=>AddAdvertisementPage());
                      },
                      leading: const Icon(
                        CupertinoIcons.profile_circled,
                        color: ColorResources.COLOR_PRIMARY,
                      ),
                      title: const Text(
                        "Add Advertisment",
                        textScaleFactor: 1.5,
                        style: TextStyle(
                          color: ColorResources.COLOR_PRIMARY,
                        ),
                      ),
                    ):SizedBox(),
                    ListTile(
                      onTap: (){
                        // AuthController controller = Get.find();
                        // controller.signOut();
                        // controller.clearControllers();

                      },
                      leading: const Icon(
                        Icons.logout,
                        color: ColorResources.COLOR_PRIMARY,
                      ),
                      title: const Text(
                        "Sign out",
                        textScaleFactor: 1.5,
                        style: TextStyle(
                          color: ColorResources.COLOR_PRIMARY,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
    //   }
    // );
  }
}

