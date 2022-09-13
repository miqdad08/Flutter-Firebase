import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../controllers/auth_controller.dart';
import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  final authCont = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SignupView'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            TextField(
              controller: controller.emailCont,
              decoration: InputDecoration(labelText: "Email"),
            ),
            TextField(
              controller: controller.passCont,
              decoration: InputDecoration(labelText: "Password"),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () => authCont.signup(
                    controller.emailCont.text, controller.passCont.text),
                child: Text('Daftar')),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Sudah Punya Akun ?"),
                TextButton(onPressed: ()=> Get.back(), child: Text('Login'))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
