import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController emailCont = TextEditingController(text: "test123@gmail.com");
  TextEditingController passCont = TextEditingController(text: "test123");

  @override
  void onClose() {
    emailCont.dispose();
    passCont.dispose();
    super.onClose();
  }
}
