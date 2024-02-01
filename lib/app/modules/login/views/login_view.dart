import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login NowLib'),
        centerTitle: true,
        backgroundColor: Colors.black26,
      ),
      body: Container(
        color: Colors.lightBlue,

        child: Center(
            child: Form(
              key: controller.formKey,
              child: Container(
                width: 500.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Image.asset("assets/logo.png"),
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
                          ElevatedButton(onPressed: () {
                            controller.login();
                          }, child: Text("Login"))
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
