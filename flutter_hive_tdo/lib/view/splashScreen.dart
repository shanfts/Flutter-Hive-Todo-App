import 'dart:async'; // Import this for the Timer class

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quick_do/view/home/home_view.dart';
// import 'package:flutter_hive_tdo/view/home/home_view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Set the status bar color to white
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white, // Set the status bar color to white
      statusBarIconBrightness:
          Brightness.dark, // Set the status bar icon color to dark
    ));

    // Navigate to the HomeView after a delay
    Timer(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const HomeView()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          color: Colors.white, // Set the background color to white
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Add your logo or branding here
              // Image.asset(
              //   'assets/logo.png', // Ensure this path is correct for your asset
              //   height: 150,
              //   width: 150,
              // ),
              // SizedBox(height: 20),

              Text(
                'Quick Do',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
