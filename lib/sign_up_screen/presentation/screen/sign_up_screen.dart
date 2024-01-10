import 'package:apotecth/home_screen/presentation/Layout/layout.dart';
import 'package:apotecth/login_screen/presentation/screen/login_screen.dart';
import 'package:apotecth/verify_otp_screen/presentation/screen/verify_otp_screen.dart';
import 'package:apotecth/welcome_screen/presentation/screen/welcome_screen.dart';
import 'package:flutter/material.dart';

class signUpScreen extends StatelessWidget {
  const signUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Color labelTextColor = Color.fromRGBO(9, 15, 71, 0.45);
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
            Padding(
              padding: EdgeInsets.fromLTRB(0, 5, 0, 20),
              child: Text(
                'Create your account',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
            ),
            SizedBox(height: 8.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Your Name',
                labelStyle: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w100,
                    fontSize: 15),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Phone Number',
                labelStyle: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w100,
                  fontSize: 15,
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue,
                  ),
                ),
                prefixText: '+62 ',
              ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w100,
                    fontSize: 15),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w100,
                  fontSize: 15,
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors
                      .blue, // Mengatur latar belakang tombol menjadi biru
                  minimumSize:
                      Size(311, 50), // Mengatur ukuran lebar dan tinggi tombol
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => VerifyOTPScreen()));
                },
                child: Text(
                  'CREATE ACCOUNT',
                  style: TextStyle(
                    color: Colors.white, // Mengatur warna tulisan menjadi putih
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "< Already have account? ",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
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
