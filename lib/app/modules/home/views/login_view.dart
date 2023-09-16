// ignore_for_file: unnecessary_import, implementation_imports, prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_import, sort_child_properties_last, unused_local_variable

import 'package:facebookui/app/modules/home/controllers/home_controller.dart';
import 'package:facebookui/app/modules/home/views/signup/joinfacebook.dart';
import 'package:facebookui/app/modules/utills/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    double screen = MediaQuery.of(context).size.width * 0.2;
    final HomeController homeController = Get.put(HomeController());
    final GlobalKey<FormState> _fromkey = GlobalKey<FormState>();
    final LoginController loginController = Get.put(LoginController());
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xffedf5ff),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                    height: 8,
                  ),
                  Icon(CupertinoIcons.arrow_left),
                  SizedBox(
                    height: 16,
                  ),
                  Align(
                      alignment: Alignment.center,
                      child: Text(
                        "English (US)",
                        style: TextStyle(
                            fontSize: 14, color: appColor.Textcolor),
                      )),
                  SizedBox(
                    height: 95,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: CircleAvatar(
                      radius: 30,
                      child: Icon(
                        FontAwesomeIcons.facebook,
                        color: appColor.iconColor,
                        size: 65,
                      ),
                      backgroundColor: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 95,
                  ),
                  Obx(() {
                    return AnimatedContainer(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                              color: homeController.containeremail.value
                                  ? Colors.black
                                  : appColor.textfiledcolor)),
                      duration: Duration(microseconds: 0),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            child: TextFormField(
                              controller:
                                  loginController.emailController.value,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Email cannot be Empty";
                                }
                                return null;
                              },
                              onTap: () {
                                homeController.focushoveremail();
                              },
                              decoration: InputDecoration(
                                  suffixIcon: InkWell(
                                      onTap: () {
                                        loginController.emailController.value
                                            .clear();
                                      },
                                      child:
                                          homeController.containeremail.value
                                              ? Icon(
                                                  Icons.close,
                                                  color: Colors.grey.shade700,
                                                )
                                              : Text('')),
                                  border: InputBorder.none,
                                  label: Text("Mobile number or email"),
                                  labelStyle: TextStyle(
                                      fontSize: 14,
                                      color:
                                          homeController.containeremail.value
                                              ? Colors.black
                                              : appColor.Textcolor)),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
                  SizedBox(
                    height: 16,
                  ),
                  Obx(() {
                    return Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                              color: homeController.containerpassword.value
                                  ? Colors.black
                                  : appColor.textfiledcolor)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: TextFormField(
                          controller:
                              loginController.passewordController.value,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Password canot be empty";
                            } else if (value.length < 6) {
                              return "password length should atleast 6";
                            }
                            return null;
                          },
                          obscureText: homeController.passwordseen.value,
                          obscuringCharacter: '*',
                          onTap: () {
                            homeController.focushoverpassword();
                          },
                          keyboardType: TextInputType.emailAddress,
                          showCursor: true,
                          decoration: InputDecoration(
                              suffixIcon: InkWell(
                                onTap: () {
                                  homeController.passwordseenchange();
                                },
                                child: homeController.containerpassword.value
                                    ? homeController.passwordseen.value
                                        ? Icon(
                                            Icons.visibility_off,
                                            color: Colors.grey.shade400,
                                          )
                                        : Icon(
                                            Icons.visibility,
                                            color: Colors.grey.shade400,
                                          )
                                    : Text(""),
                              ),
                              focusColor: Colors.black,
                              border: InputBorder.none,
                              label: Text("Password"),
                              labelStyle: TextStyle(
                                  fontSize: 14,
                                  color:
                                      homeController.containerpassword.value
                                          ? Colors.black
                                          : appColor.textfiledcolor)),
                        ),
                      ),
                    );
                  }),
                  SizedBox(
                    height: 16,
                  ),
                  InkWell(onTap: () {
                    loginController.loginApi();
                  }, child: Obx(() {
                    return AnimatedContainer(
                      duration: Duration(microseconds: 5000),
                      height: 45,
                      width: loginController.loading.value
                          ? 50
                          : double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: appColor.buttonColor),
                      child: Center(
                          child: loginController.loading.value
                              ? CircularProgressIndicator()
                              : Text(
                                  "Log in",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.white),
                                )),
                    );
                  })),
                  SizedBox(
                    height: 16,
                  ),
                  Align(
                      alignment: Alignment.center,
                      child: Text("Forgot passwpord?")),
                                
                    ],
                  ),
                  SizedBox(
                    height: screen+50,
                  ),
                  bottomui()
                 
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  bottomui() {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Get.to(JoinFaceBook());
          },
          child: Container(
            height: 45,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: appColor.bottomColor)),
            child: Center(
                child: Text(
              "Create new account",
              style: TextStyle(
                color: appColor.bottomColor,
                fontSize: 18,
              ),
            )),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              FontAwesomeIcons.meta,
              size: 16,
              color: Color(0xff485a6b),
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              "Meta",
              style: TextStyle(
                fontSize: 16,
                color: Color(0xff485a6b),
              ),
            )
          ],
        )
      ],
    );
  }
}
