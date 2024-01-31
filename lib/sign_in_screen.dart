import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.white), // Assuming you want a back button
        title: Text('Sign in', style: TextStyle(color: Colors.white)),
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
            SizedBox(height: 20),
            Text(
              'Sign In Heading',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.red.shade400),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce convallis pellentesque metus id lacinia.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.red.shade400),
            ),
            SizedBox(height: 30),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email*',
                labelStyle: TextStyle(
                  color: Colors.red.shade400, //We set the color
                ),
                filled: true,
                fillColor: Colors.white.withOpacity(0.8),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password*',
                labelStyle: TextStyle(
                  color: Colors.red.shade400, // we set the color again
                ),
                filled: true,
                fillColor: Colors.white.withOpacity(0.8),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                // Handle "I forgot my password" tap
              },
              child: Text(
                'I forgot my password',
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
                // Handle "Log in" tap
              },
              child: Text('Log in'),
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
                onPressed: (){
                  //Handle sign in
                },
              child: Text('Sign in'),
              style: ElevatedButton.styleFrom(
                primary: Colors.redAccent.shade200,
                onPrimary: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 13),
                side: BorderSide(color: Colors.white, width: 2.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
                ),
              ),
            ),

            SizedBox(height: 7),//gap

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
                    'Sign in with Google',
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
