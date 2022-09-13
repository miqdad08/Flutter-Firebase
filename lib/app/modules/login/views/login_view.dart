import 'package:flutter/material.dart';
import 'package:flutter_fire/app/controllers/auth_controller.dart';
import 'package:get/get.dart';
import '../../../routes/app_pages.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {

  final authCont = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LoginView'),
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

            Align(
              alignment: Alignment.centerRight,
              child: TextButton(onPressed: ()=>
                Get.toNamed(Routes.RESET_PASSWORD), child: Text('Reset Password')),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Belum Punya Akun ?"),
                TextButton(onPressed: ()=> Get.toNamed(Routes.SIGNUP), child: Text('Daftar'))
              ],
            ),

            SizedBox(height: 10,),
            ElevatedButton(
                onPressed: (){
                  authCont.login(controller.emailCont.text, controller.passCont.text);
                },
                child: Text('Login')),
          ],
        ),
      ),
    );
  }
}
