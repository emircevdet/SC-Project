import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:solution_challenge/sign_in_screen.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.white), // Assuming you want a back button
        title: Text('Sign up', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.red.shade300, // Adjust the color to match your design
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.pink.shade100, Colors.pink.shade50],
          ),
        ),
        child: ListView( // Use ListView for better handling of keyboard appearance
          children: <Widget>[

            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: '  Name*',
                labelStyle: TextStyle(
                  color: Colors.red.shade400, //We set the color
                ),
                filled: true,
                fillColor: Colors.white.withOpacity(0.8),
                contentPadding: EdgeInsets.symmetric(vertical: 17),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: '  Last Name*',
                labelStyle: TextStyle(
                  color: Colors.red.shade400, // we set the color again
                ),
                filled: true,
                fillColor: Colors.white.withOpacity(0.8),
                contentPadding: EdgeInsets.symmetric(vertical: 17),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
              ),
            ),

            SizedBox(height: 10),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: '  Email*',
                labelStyle: TextStyle(
                  color: Colors.red.shade400, // we set the color again
                ),
                filled: true,
                fillColor: Colors.white.withOpacity(0.8),
                contentPadding: EdgeInsets.symmetric(vertical: 17),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
              ),
            ),

            SizedBox(height: 10),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: '  Birthday*',
                labelStyle: TextStyle(
                  color: Colors.red.shade400, // we set the color again
                ),
                filled: true,
                fillColor: Colors.white.withOpacity(0.8),
                contentPadding: EdgeInsets.symmetric(vertical: 17),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
              ),
            ),

            SizedBox(height: 10),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: '  Password*',
                labelStyle: TextStyle(
                  color: Colors.red.shade400, // we set the color again
                ),
                filled: true,
                fillColor: Colors.white.withOpacity(0.8),
                contentPadding: EdgeInsets.symmetric(vertical: 17),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
              ),
            ),

            SizedBox(height: 10,),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: '  Confirm Password*',
                labelStyle: TextStyle(
                  color: Colors.red.shade400, // we set the color again
                ),
                filled: true,
                fillColor: Colors.white.withOpacity(0.8),
                contentPadding: EdgeInsets.symmetric(vertical: 17), // Reduced vertical padding
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
              ),
            ),

            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignInScreen()),
                );// Handle skip
              },
              child: Text(
                'Already have an account? Log in',
                style: TextStyle(
                  color: Colors.red.shade400,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.red.shade400,

                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle "Sign in" tap
              },
              child: Text('Sign Up'),
              style: ElevatedButton.styleFrom(
                primary: Colors.redAccent.shade200,
                onPrimary: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 13),
                side: BorderSide(color: Colors.white, width: 2.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),

            SizedBox(height: 20),
            Text('OR', textAlign: TextAlign.center, style: TextStyle(color: Colors.red.shade400)),
            SizedBox(height: 20),


            ElevatedButton(
              onPressed: () {
                // Handle "Sign in with Google" tap
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.redAccent.shade200, // Button background color
                onPrimary: Colors.white, // Text color
                padding: EdgeInsets.symmetric(vertical: 13, horizontal: 24), // Add horizontal padding
                side: BorderSide(color: Colors.white, width: 2.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                minimumSize: Size(double.infinity, 50), // make button width as large as possible
              ),
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Image.asset(
                      'images/googlelogo.jpg', // Path to your Google logo asset
                      height: 24.0, // Set the size as needed
                      width: 24.0, // Set the size as needed
                    ),
                  ),
                  Text(
                    'Sign up with Google',
                    style: TextStyle(
                      fontSize: 16, // Set the font size as needed
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),




            SizedBox(height: 20),
            Text(
              'By proceeding you also agree to the Terms of Service and Privacy Policy',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.red.shade400, fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}

