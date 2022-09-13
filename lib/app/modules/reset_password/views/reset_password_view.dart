import 'package:flutter/material.dart';
import 'package:flutter_fire/app/controllers/auth_controller.dart';

import 'package:get/get.dart';

import '../controllers/reset_password_controller.dart';

class ResetPasswordView extends GetView<ResetPasswordController> {
  final authCont = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reset Password Screen'),
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

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Sudah Punya Akun ?"),
                TextButton(onPressed: ()=> Get.back(), child: Text('Login'))
              ],
            ),

            SizedBox(height: 10,),
            ElevatedButton(
                onPressed: (){
                  authCont.resetPassword (controller.emailCont.text);
                },
                child: Text('Reset')),
          ],
        ),
      ),
    );
  }
}
