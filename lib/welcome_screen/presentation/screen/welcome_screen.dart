import 'package:apotecth/login_screen/presentation/screen/login_screen.dart';
import 'package:apotecth/sign_up_screen/presentation/screen/sign_up_screen.dart';
import 'package:flutter/material.dart';

class welcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color titleColor = Color.fromRGBO(9, 15, 71, 1.0);
    Color buttonPrimaryColor = Color.fromRGBO(65, 87, 255, 1.0);
    Color textButtonColor = Color.fromRGBO(9, 15, 71, 0.75);
    Color borderColor = Color.fromRGBO(9, 15, 71, 0.01);
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/image3.png',
                width: 258.0,
                height: 258.0,
              ),
              SizedBox(height: 20),
              Text(
                'Welcome to Apotech',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: titleColor),
              ),
              SizedBox(height: 15),
              Text(
                'Do you want some help with your health to get better life?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey.shade400,
                ),
              ),
              SizedBox(height: 40),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => signUpScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                          fixedSize: Size(311, 50),
                          backgroundColor: buttonPrimaryColor,
                          primary:
                              Colors.blue, // Set the background color to blue
                          onPrimary: Colors.white,
                          textStyle: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              fontFamily:
                                  'Overpass') // Set the text color to white
                          ),
                      child: Text('SIGN UP WITH EMAIL'),
                    ),
                    SizedBox(height: 10), // Add spacing between buttons
                    ElevatedButton(
                      onPressed: () {
                        // Add your button functionality here
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(311, 50),
                        primary: Colors.white,
                        onPrimary: textButtonColor,
                        side: BorderSide(color: borderColor, width: 2),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                right: 8), // Add margin between image and text
                            child: Image.asset('images/facebook.png'),
                          ),
                          Text('CONTINUE WITH FACEBOOK'),
                        ],
                      ),
                    ),
                    SizedBox(height: 10), // Add spacing between buttons
                    ElevatedButton(
                      onPressed: () {
                        // Add your button functionality here
                      },
                      style: ElevatedButton.styleFrom(
                          fixedSize: Size(311, 50),
                          primary: Colors.white,
                          onPrimary: textButtonColor,
                          side: BorderSide(color: borderColor, width: 2),
                          textStyle: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w600)),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                right: 8), // Add margin between image and text
                            child: Image.asset('images/google.png'),
                          ),
                          Text('CONTINUE WITH GMAIL'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Column(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()));
                      },
                      child: Text(
                        'LOGIN',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
