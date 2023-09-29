import 'package:flutter/material.dart';
import 'package:flutter_coding_test/controllers/splash_controllers.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

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
              Text(
                'Bellboy',
                // style: TextStyle(fontSize: 50),
                style: GoogleFonts.sacramento(
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic,
                  textStyle: const TextStyle(
                    fontSize: 44,
                  ),
                ),
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
