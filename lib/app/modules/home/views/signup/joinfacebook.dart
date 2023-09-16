// ignore_for_file: prefer_const_constructors

import 'package:facebookui/app/modules/home/views/login_view.dart';
import 'package:facebookui/app/modules/home/views/signup/pageone.dart';
import 'package:facebookui/app/modules/utills/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class JoinFaceBook extends StatelessWidget {
  const JoinFaceBook({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
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
                  Text(
                    "Join Facebook",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                      height: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://images.pexels.com/photos/5678243/pexels-photo-5678243.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")))),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Create an account to connect with friends, family and communities of pepole who share your interests.",
                    style: TextStyle(fontSize: 17),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  InkWell(
                      onTap: () {
                        Get.to(PageOne());
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
                          "Get started",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        )),
                      )),
                ],
              )),
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
