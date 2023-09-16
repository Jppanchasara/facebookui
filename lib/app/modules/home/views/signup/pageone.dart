// ignore_for_file: prefer_const_constructors

import 'package:facebookui/app/modules/home/views/signup/pagetwo.dart';
import 'package:facebookui/app/modules/utills/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../login_view.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      appbar(),
                      SizedBox(
                        height: 8,
                      ),
                      Text("What's your name?",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                      SizedBox(height: 16,),
                      Text("Enter the name you use in real life.",style: TextStyle(fontSize:16),),
                      SizedBox(height: 16,),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 60,
                            width:170,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                      color:  appColor.textfiledcolor)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8),
                                child: TextFormField(
                                                  
                                  keyboardType: TextInputType.emailAddress,
                                  showCursor: true,
                                  decoration: InputDecoration(
                                      
                                      focusColor: Colors.black,
                                      border: InputBorder.none,
                                      label: Text("First name"),
                                      labelStyle: TextStyle(
                                          fontSize: 14,
                                          color:
                                               appColor.textfiledcolor)),
                                ),
                              ),
                            ),
                            
                            Container(
                              height: 60,
                              width: 170,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                      color:  appColor.textfiledcolor)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8),
                                child: TextFormField(
                                                  
                                  keyboardType: TextInputType.emailAddress,
                                  showCursor: true,
                                  decoration: InputDecoration(
                                      
                                      focusColor: Colors.black,
                                      border: InputBorder.none,
                                      label: Text("Last name"),
                                      labelStyle: TextStyle(
                                          fontSize: 14,
                                          color:
                                               appColor.textfiledcolor)),
                                ),
                              ),
                            ),
                    
                        ],
                      ),
                      SizedBox(height: 16,),
                      InkWell(
                          onTap: () {
                            Get.to(PageTwo());
                          },
                          child: AnimatedContainer(
                            duration: Duration(microseconds: 5000),
                            height: 45,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: appColor.buttonColor),
                            child: Center(
                                child: Text(
                              "next",
                              style: TextStyle(fontSize: 18, color: Colors.white),
                            )),
                          )),
                    
                    ],
                  ),
                ),
                Align(
                      alignment: Alignment.bottomCenter,
                      child: TextButton(
                        child: Text(
                          "Already have an account?",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: appColor.iconColor),
                        ),
                        onPressed: () {
                          Get.to(LoginView());
                        },
                      ),
                    )

              ],
            ),
          ),
        ),
      ),
    );
  }

  appbar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
            onTap: () {
              Get.to(LoginView());
            },
            child: Icon(FontAwesomeIcons.arrowLeft)),
        Icon(CupertinoIcons.volume_mute)
      ],
    );
  }
}
