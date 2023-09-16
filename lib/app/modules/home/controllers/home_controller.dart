// ignore_for_file: unnecessary_overrides

import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart'as http;

class HomeController extends GetxController {
  //TODO: Implement HomeController

  RxBool containeremail = false.obs;
  RxBool containerpassword = false.obs;
  RxBool passwordseen = true.obs;
  passwordseenchange() {
    passwordseen.value = !passwordseen.value;
  }

  focushoveremail() {
    containeremail.value = !containeremail.value;
  }

  focushoverpassword() {
    containerpassword.value = !containerpassword.value;
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}


class LoginController extends GetxController {
  final emailController = TextEditingController().obs;
  final passewordController = TextEditingController().obs;
  RxBool loading = false.obs;
  


  void loginApi() async {
    loading = true.obs;
    try {
      final response = await http.post(Uri.parse("https://reqres.in/api/login"),
          body: {
            "email": emailController.value.text,
            "password": passewordController.value.text
          });
      var data = jsonDecode(response.body);
      
      if (response.statusCode == 200) {
        loading = false.obs;
        Get.snackbar('Login Successfully', 'Hello,Welcome to FacebookApp');
      } else {
        loading = false.obs;
        Get.snackbar('Login Failed', data['error']);
      }
    } catch (e) {
      loading = false.obs;
      Get.snackbar('Exception', e.toString());
    }
  }
}
