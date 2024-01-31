import 'package:flutter/material.dart';
import 'package:solution_challenge/sign_in_screen.dart';
import 'package:solution_challenge/sign_up_screen.dart';
import 'sign_in_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OnboardingScreen(),
    );
  }
}

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.pink.shade100, Colors.pink.shade50],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(height: 100),
            Text(
              'hello!',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 150), // provides spacing between text widgets
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 200), // provides spacing between text widgets
            Container(
              padding: EdgeInsets.all(10),
              color: Colors.red.shade200,
              child: Text(
                'ihtiyacınız olan bölümler nelerdir ufak anket tarzı bir şey yapılabilir burada',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              child: Container(), // This will push the Row of buttons to the bottom
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpScreen()),
                    );// Handle skip
                  },
                  child: Text(
                    'Skip',
                    style: TextStyle(
                      fontSize: 20, // We set the size
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red.shade200,
                    onPrimary: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 42, vertical: 12), // Increase padding
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero, // Set border radius to zero for rectangular buttons
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpScreen()),
                    );
                  },
                  child: Text(
                    'Next',
                    style: TextStyle(
                      fontSize: 20, // We set the size
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red.shade300,
                    onPrimary: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 42, vertical: 12), // Increase padding
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero, // Set border radius to zero for rectangular buttons
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20), // Add space at the bottom if necessary
          ],
        ),
      ),
    );
  }
}
