import 'package:apotecth/welcome_screen/presentation/screen/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const pageDecoration = const PageDecoration(
        imagePadding: EdgeInsets.fromLTRB(0, 50, 0, 10),
        titleTextStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
        bodyTextStyle: TextStyle(fontSize: 18, color: Colors.grey),
        bodyPadding: EdgeInsets.fromLTRB(20, 5, 20, 5));
    return IntroductionScreen(
      globalBackgroundColor: Colors.white,
      pages: [
        PageViewModel(
            title: 'View and buy Medicine online',
            body:
                'Etiam mollis metus non purus faucibus sollicitudin. Pellentesque sagittis mi. Integer.',
            image: Image.asset('images/image1.png'),
            decoration: pageDecoration),
        PageViewModel(
            title: 'Online medical & Healthcare',
            body:
                'Etiam mollis metus non purus faucibus sollicitudin. Pellentesque sagittis mi. Integer.',
            image: Image.asset('images/image2.png'),
            decoration: pageDecoration),
      ],
      onDone: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => welcomeScreen()));
      },
      onSkip: (){
         Navigator.push(
            context, MaterialPageRoute(builder: (context) => welcomeScreen()));
      },
      showSkipButton: true,
      showNextButton: true,
      showDoneButton: true,
      showBackButton: false,
      back: const Icon(Icons.arrow_back),
      skip: Text('Skip', style: TextStyle(fontSize: 14, color: Colors.grey)),
      next: Text(
        'Next',
        style: TextStyle(
            fontSize: 14, fontWeight: FontWeight.bold, color: Colors.blue),
      ),
      done: Text(
        'Done',
        style: TextStyle(
            fontSize: 14, fontWeight: FontWeight.bold, color: Colors.blue),
      ),
      dotsDecorator: DotsDecorator(
          size: Size(4, 4),
          color: Colors.grey,
          activeSize: Size(4, 4),
          activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(100))),
          activeColor: Colors.blue),
    );
  }
}
