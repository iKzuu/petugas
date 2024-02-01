import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(bottom: 120.0),
        color: Colors.lightBlue,
        child: Center(
            child: Form(
              key: controller.formKey,
              child: Container(
                width: 450.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Image.asset(
                          "assets/logo.png",
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          TextFormField(
                            controller: controller.usernameController,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.grey[200],
                                hintText: "Masukkan Username",
                                prefixIcon: Icon(Icons.person),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "username tidak boleh kosong";
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 16.0),
                          TextFormField(
                            obscureText: true,
                            controller: controller.passwordController,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.grey[200],
                              hintText: "Masukkan Password",
                              prefixIcon: Icon(Icons.lock_outline),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            validator: (value) {
                              if (value!.length <2) {
                                return "password tidak boleh kosong";
                              }
                              return null;
                            },
                          ),

                          SizedBox(height: 16.0),

                          Obx(() => controller.loading.value?
                          CircularProgressIndicator():
                          Container(
                            margin: EdgeInsets.only(left: 335.0),
                            padding: EdgeInsets.only(top: 30.0),
                            child: ElevatedButton(onPressed: () {
                              controller.login();
                            },
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all<Color>(Colors.blueAccent),
                                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),// Ganti warna sesuai keinginan,
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                  minimumSize: MaterialStateProperty.all(Size(100.0, 50.0)),
                                ),
                                child: Text("Login")),
                          ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
        ),
      ),
    );
  }
}
