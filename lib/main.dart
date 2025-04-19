import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'login_page.dart';  // Ensure this points to your LoginPage
import 'registration_screen.dart';
import 'home_screen.dart';
import 'splash_screen.dart'; // Import the splash screen


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/', // Set initial route to splash screen
      routes: {
        '/': (context) => SplashScreen(), // Splash Screen
        '/login': (context) => LoginScreen(), // Your login page
        '/home': (context) => HomeScreen(), // Home screen
        // Add other routes as needed
      },
    );
  }
}
