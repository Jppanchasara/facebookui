import 'package:facebookui/app/modules/home/views/login_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  appbar(),
                  SizedBox(height: 16,),
                  Text("Select your name",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),)
                
                ],
              ))
        
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