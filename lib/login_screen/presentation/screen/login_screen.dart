import 'package:apotecth/home_screen/presentation/Layout/layout.dart';
import 'package:apotecth/login_success_screen/presentation/screen/login_success_screen.dart';
import 'package:apotecth/sign_up_screen/presentation/screen/sign_up_screen.dart';
import 'package:apotecth/welcome_screen/presentation/screen/welcome_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
                'Welcome Back!',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
            ),
            SizedBox(height: 8.0),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                hintText: 'Username',
                hintStyle:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.w100),
              ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                hintText: 'Password',
                hintStyle:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.w100),
                suffixIcon: GestureDetector(
                  onTap: () {
                    // Tambahkan logika untuk menghandle saat link "Forgot?" ditekan
                  },
                  child: Text(
                    'Forgot?',
                    style: TextStyle(color: labelTextColor, fontSize: 12),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.0),
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
                          builder: (context) => loginSuccessScreen()));
                },
                child: Text(
                  'SIGN IN',
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
                  "< Don't have an account? ",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => signUpScreen()));
                  },
                  child: Text(
                    "Sign Up",
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
