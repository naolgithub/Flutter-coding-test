import 'package:flutter/material.dart';
import 'package:flutter_coding_test/controllers/login_controllers.dart';
import 'package:get/get.dart';

class LoginView extends GetView<LoginController> {
  LoginView({Key? key}) : super(key: key);
  late final TextEditingController emailController = TextEditingController();

  final _emailValid = false.obs;

  bool get isEmailValid => _emailValid.value;

  void validateEmail(String email) {
    final emailRegex = RegExp(r'^.+@.+\..+$');
    _emailValid.value = emailRegex.hasMatch(email);
  }

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(
    //     title: const Text('Login View'),
    //     centerTitle: true,
    //   ),
    //   body: Center(
    //     child: ElevatedButton(
    //       child: const Text("Login"),
    //       onPressed: () {
    //         controller.login();
    //       },
    //     ),
    //   ),
    // );

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Log in',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: TextField(
                  controller: emailController,
                  onChanged: validateEmail,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                  ),
                ),
              ),
              const SizedBox(
                height: 250,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  height: 100,
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Find e-mail',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text('|'),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'Find password',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16),
                      Obx(
                        () => SizedBox(
                          width: 350,
                          child: TextButton(
                            onPressed:
                                isEmailValid ? () => print('Next') : null,
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                isEmailValid ? Colors.black : Colors.grey,
                              ),
                            ),
                            child: Text(
                              isEmailValid
                                  ? 'Next'
                                  : 'Enter your e-mail address',
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
