import 'package:apotecth/home_screen/presentation/Layout/layout.dart';
import 'package:apotecth/login_success_screen/presentation/screen/login_success_screen.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class VerifyOTPScreen extends StatefulWidget {
  const VerifyOTPScreen({Key? key}) : super(key: key);

  @override
  _VerifyOTPScreenState createState() => _VerifyOTPScreenState();
}

class _VerifyOTPScreenState extends State<VerifyOTPScreen> {
  int countdown = 60; // Waktu hitung mundur dalam detik
  late Timer timer;
  List<String> otpDigits = List.filled(6, ''); // List untuk menyimpan digit OTP
  bool isFilled = false;
  bool isError = false;

  @override
  void initState() {
    super.initState();
    startCountdown();
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  void startCountdown() {
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (countdown > 0) {
          countdown--;
        } else {
          timer.cancel();
        }
      });
    });
  }

  String formatTime(int time) {
    int minutes = time ~/ 60;
    int seconds = time % 60;
    String minutesStr = (minutes < 10) ? '0$minutes' : minutes.toString();
    String secondsStr = (seconds < 10) ? '0$seconds' : seconds.toString();
    return '$minutesStr:$secondsStr';
  }

  void resendCode() {
    setState(() {
      countdown = 60;
      startCountdown();
    });
  }

  void submitCode() {
    bool isValid = true;
    for (String digit in otpDigits) {
      if (digit.isEmpty) {
        isValid = false;
        break;
      }
    }
    if (isValid) {

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => loginSuccessScreen()),
      );
    } else {
      setState(() {
        isError = true;
      });
    }
  }

  Color buttonColor = Color.fromRGBO(65, 87, 255, 1.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Enter the verify code',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            Text(
              'We just send you a verification code via phone +62 821 39 488 953',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(6, (index) {
                return SizedBox(
                  width: 40,
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    onChanged: (value) {
                      setState(() {
                        otpDigits[index] = value;
                        isError = false;
                        isFilled = otpDigits.every((digit) => digit.isNotEmpty);
                      });
                    },
                    decoration: InputDecoration(
                      counterText: '', // Menghilangkan counter text
                      hintText: '0',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w100,
                        fontSize: 15,
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: isError
                              ? Colors.red
                              : Colors.grey, // Mengatur warna border
                          width: isError ? 2.0 : 1.0, // Mengatur lebar border
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: isFilled
                  ? submitCode
                  : null, // Mengatur aksi saat tombol ditekan
              style: ElevatedButton.styleFrom(
                primary:
                    buttonColor, // Mengatur latar belakang tombol menjadi biru
                onPrimary: Colors.white, // Mengatur warna teks menjadi putih
                textStyle: TextStyle(
                  fontSize: 16,
                  fontWeight:
                      FontWeight.bold, // Mengatur font weight menjadi bold
                ),
                minimumSize:
                    Size(311, 50), // Mengatur ukuran lebar dan tinggi tombol
                shadowColor: Colors.black, // Mengatur warna shadow
                elevation: 5, // Mengatur tinggi shadow
              ),
              child: Text('SUBMIT CODE'),
            ),
            SizedBox(height: 16.0),
            Text(
              'The verify code will expire in ${formatTime(countdown)}',
              style: TextStyle(fontSize: 14, color: Colors.grey),
              textAlign:
                  TextAlign.center, // Mengatur teks menjadi posisi tengah
            ),
            SizedBox(height: 5.0),
            TextButton(
              onPressed: resendCode,
              child: Text(
                'Resend Code',
                style: TextStyle(
                  fontSize: 14,
                  color: buttonColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
