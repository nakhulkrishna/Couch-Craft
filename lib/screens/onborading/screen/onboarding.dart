import 'package:any_animated_button/any_animated_button.dart';
import 'package:couchcraft/screens/Home/screens/Home_screen.dart';

import 'package:couchcraft/utils/colors/appcolor.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
              },
              child: const Text("Skip"))
        ],
      ),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Lottie.asset(
              "assets/animations/Animation 2.json",
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(-50)),
                color: AppColors.softGreenish,
              ),
              height: 300,
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    "Welcome to CouchCraft Shopping!",
                    style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w500,
                        fontSize: 25,
                        color: AppColors.almostWhite),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    "Shop Smarter, Not Harder! Start Adding Your Favorites Now!",
                    style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: AppColors.oliveGreen),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Sign with google",
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w200, color: Colors.blue),
                      ))
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
