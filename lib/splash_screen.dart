import 'package:flutter/material.dart';
import 'dart:async'; // To use Future.delayed

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    
    // Navigate to the login page after 3 seconds
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/login');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Background color of splash screen
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Display the image (ensure the image path is correct)
            Expanded(
              child: Image.asset(
                'assets/images/Flower.jpg',  // The image you want to use
                fit: BoxFit.cover,  // Ensures the image covers the entire space
              ),
            ),
            SizedBox(height: 20, width: 30),
          ],
        ),
      ),
    );
  }
}
