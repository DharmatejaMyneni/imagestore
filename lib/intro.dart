import 'package:flutter/material.dart';
import 'package:imagestore/home_screen.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:imagestore/login/login.dart';
import 'user_repository.dart';

class IntroScreen extends StatelessWidget {
  final pageDecoration = PageDecoration(
    bodyTextStyle: PageDecoration().bodyTextStyle.copyWith(color: Colors.black),
    contentPadding: EdgeInsets.all(5.0),
    titleTextStyle:
        PageDecoration().bodyTextStyle.copyWith(color: Colors.black),
  );

  List<PageViewModel> getPages() {
    return [
      PageViewModel(
          image: Image.asset('assets/images/intro_one.png'),
          title: "Welcome to Image store",
          body: "Store Your Images Here ",
          footer:
              Text("ImageStore Project",   style: TextStyle(color: Colors.black)),
          decoration: PageDecoration()),
      PageViewModel(
          image: Image.asset('assets/images/intro_two.png'),
          title: "Pick your images Now",
          body: "",
          footer: Text(" ", style: TextStyle(color: Colors.black)),
          decoration: PageDecoration()),
      PageViewModel(
          image: Image.asset('assets/images/intro_three.png'),
          title: "we will store it for you",
          body: " ",
          footer: Text(" ", style: TextStyle(color: Colors.black)),
          decoration: PageDecoration())
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
          globalBackgroundColor: Colors.white,
          pages: getPages(),
          showSkipButton: true,
          showNextButton: true,
          skip: Text("Skip"),
          onDone: () {
          },
          done: Text("Got it", style: TextStyle(color: Colors.blue))),
    );
  }
}
