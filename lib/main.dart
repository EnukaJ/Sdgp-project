import 'dart:io';

import 'package:flutter/material.dart';
import 'package:home_page/home_page.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Home()));
}

class Home extends StatefulWidget {
  @override
  HomeState createState() => new HomeState();
}

class HomeState extends State<Home> {
  bool isButton1Pressed = false;
  bool isButton2Pressed = false;
  bool isButton3Pressed = false;
  bool isButton4Pressed = false;

  // ignore: non_constant_identifier_names
  void Button1Pressed() {
    setState(() {
      if (isButton1Pressed == false) {
        isButton1Pressed = true;
      } else if (isButton1Pressed == true) {
        isButton1Pressed = false;
      }
    });
  }

  void Button2Pressed() {
    setState(() {
      if (isButton2Pressed == false) {
        isButton2Pressed = true;
      } else if (isButton2Pressed == true) {
        isButton2Pressed = false;
      }
    });
  }

  void Button3Pressed() {
    setState(() {
      if (isButton3Pressed == false) {
        isButton3Pressed = true;
      } else if (isButton3Pressed == true) {
        isButton3Pressed = false;
      }
    });
  }

  void Button4Pressed() {
    setState(() {
      if (isButton4Pressed == false) {
        isButton4Pressed = true;
      } else if (isButton4Pressed == true) {
        isButton4Pressed = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.sort_rounded,
            color: Colors.white,
          ),
          onPressed: () {
            print("pressed");
          },
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 0.0,
        title: const Text(
          'Mate',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            icon: Image.asset('images/logo.jpeg'),
            iconSize: 50,
            onPressed: () => exit(0),
          ),
        ],
      ),
      body: Container(
          child: Stack(
        children: <Widget>[
          ClipPath(
            clipper: WaveClipper(), //set our custom wave clipper
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 145, 186, 219),
              ),
              height: 540,
            ),
          ),
          ClipPath(
            //upper clippath with less height
            clipper: WaveClipper(), //set our custom wave clipper.
            child: Container(
              padding: const EdgeInsets.only(bottom: 50),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 0, 54, 99),
              ),
              height: 510,
            ),
          ),
          const Text("Homepage",
              style: TextStyle(
                  color: Color.fromARGB(221, 180, 181, 183),
                  fontSize: 50,
                  fontWeight: FontWeight.bold)),
          MyHomePage(
            onTap1: Button1Pressed,
            isButton1Pressed: isButton1Pressed,
            onTap2: Button2Pressed,
            isButton2Pressed: isButton2Pressed,
            onTap3: Button3Pressed,
            isButton3Pressed: isButton3Pressed,
            onTap4: Button4Pressed,
            isButton4Pressed: isButton4Pressed,
          )
        ],
      )),
    );
  }
}

//Costom CLipper class with Path
class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(
        0, size.height); //start path with this if you are making at bottom

    var firstStart = Offset(size.width / 5, size.height);
    //fist point of quadratic bezier curve
    var firstEnd = Offset(size.width / 2.25, size.height - 52.0);
    //second point of quadratic bezier curve
    path.quadraticBezierTo(
        firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

    var secondStart =
        Offset(size.width - (size.width / 3.24), size.height - 105);
    //third point of quadratic bezier curve
    var secondEnd = Offset(size.width, size.height - 70);
    //fourth point of quadratic bezier curve
    path.quadraticBezierTo(
        secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);

    path.lineTo(
        size.width, 0); //end with this path if you are making wave at bottom
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false; //if new instance have different instance than old instance
    //then you must return true;
  }
}
