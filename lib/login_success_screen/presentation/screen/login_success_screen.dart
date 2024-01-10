import 'package:apotecth/home_screen/presentation/Layout/layout.dart';
import 'package:apotecth/verify_otp_screen/presentation/screen/verify_otp_screen.dart';
import 'package:apotecth/welcome_screen/presentation/screen/welcome_screen.dart';
import 'package:flutter/material.dart';

class loginSuccessScreen extends StatelessWidget {
  const loginSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Color labelTextColor = Color.fromRGBO(9, 15, 71, 0.45);
    Color buttonColor = Color.fromRGBO(65, 87, 255, 1.0);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => welcomeScreen()));
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset('images/successLoginImage.png'),
            Text(
              'Phone Number Verified',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
              child: Text(
                'Congratulations, your phone number has been verified. You can start using the app',
                style: TextStyle(
                    fontWeight: FontWeight.w100,
                    fontSize: 16,
                    color: Colors.grey),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 16.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: buttonColor, // This is the button color
                      onPrimary: Colors.white, // This is the text color
                      minimumSize: Size(311, 50), // This sets the button size
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => homeScreen()));
                    },
                    child: Text(
                      'CONTINUE',
                      style: TextStyle(
                        fontWeight: FontWeight.bold, // This makes the text bold
                        fontSize: 16, // This sets the font size
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
