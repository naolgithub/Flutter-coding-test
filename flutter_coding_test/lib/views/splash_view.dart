import 'package:flutter/material.dart';
import 'package:flutter_coding_test/controllers/splash_controllers.dart';
import 'package:get/get.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Bellboy',
                style: TextStyle(fontSize: 50),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                // padding: const EdgeInsets.symmetric(vertical: 15),
                width: 155,
                height: 25,
                decoration: BoxDecoration(
                  // color: const Color(0xFF7165D6),
                  color: Colors.orange[600],
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.orange,
                      blurRadius: 2,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: const Text(
                  'For Rider',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    wordSpacing: 10,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
