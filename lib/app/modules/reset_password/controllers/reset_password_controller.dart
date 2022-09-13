import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPasswordController extends GetxController {
  TextEditingController emailCont = TextEditingController(text: "test123@gmail.com");

  @override
  void onClose() {
    emailCont.dispose();
    super.onClose();
  }
}
