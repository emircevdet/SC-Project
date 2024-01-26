import 'package:flutter/material.dart';

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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              'hello!',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.red.shade300,
              ),
            ),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.red.shade200,
              ),
            ),
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

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    // Handle skip
                  },
                  child: Text(
                      'Skip',
                    style: TextStyle(
                      fontSize: 20, //We set the size
                    )
                  ),

                  style: ElevatedButton.styleFrom(
                    primary: Colors.red.shade200,
                    onPrimary : Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 42, vertical: 12), // Increase padding
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero, // Set border radius to zero for rectangular buttons
                    ),
                  ),
                ),


                ElevatedButton(
                  onPressed: () {
                    // Handle next
                  },
                  child: Text(
                      'Next',
                  style: TextStyle(
                    fontSize: 20, //We set the size
                  )
                  ),

                  style: ElevatedButton.styleFrom(

                    primary: Colors.red.shade300,
                    onPrimary : Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 42, vertical: 12), // Increase padding
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero, // Set border radius to zero for rectangular buttons
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
