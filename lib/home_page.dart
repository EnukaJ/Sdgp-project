/ ignore_for_file: no_logic_in_create_state

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatelessWidget {
  final onTap1;
  final onTap2;
  final onTap3;
  final onTap4;
  bool isButton1Pressed;
  bool isButton2Pressed;
  bool isButton3Pressed;
  bool isButton4Pressed;

  MyHomePage(
      {super.key,
      this.onTap1,
      this.onTap2,
      this.onTap3,
      this.onTap4,
      required this.isButton1Pressed,
      required this.isButton2Pressed,
      required this.isButton3Pressed,
      required this.isButton4Pressed});

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: GridView.count(
      childAspectRatio: 1.25,
      crossAxisCount: 2,
      crossAxisSpacing: 30,
      mainAxisSpacing: 30,
      children: [
        const SizedBox(
          height: 4,
        ),
        const Padding(padding: EdgeInsets.only(top: 200, left: 30, right: 30)),
        GestureDetector(
          onTap: onTap1,
          child: Container(
            decoration: BoxDecoration(
                color: isButton1Pressed
                    ? Color.fromARGB(255, 194, 240, 255)
                    : Colors.white,
                borderRadius: BorderRadius.circular(18),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.white,
                    spreadRadius: 1,
                    blurRadius: 8,
                    offset: Offset(4, 4),
                  ),
                  BoxShadow(
                    color: Colors.white,
                    spreadRadius: 1,
                    blurRadius: 8,
                    offset: Offset(-6, -6),
                  )
                ]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Image(
                  image: AssetImage("images/chatbot.png"),
                  width: 50,
                  height: 50,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "ChatBot",
                  style: GoogleFonts.openSans(
                      textStyle: const TextStyle(
                          color: Colors.black87,
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                ),
                const SizedBox(
                  height: 8,
                ),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: onTap2,
          child: Container(
            decoration: BoxDecoration(
                color: isButton2Pressed
                    ? Color.fromARGB(255, 194, 240, 255)
                    : Colors.white,
                borderRadius: BorderRadius.circular(18),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.white,
                    spreadRadius: 1,
                    blurRadius: 8,
                    offset: Offset(4, 4),
                  ),
                  BoxShadow(
                    color: Colors.white,
                    spreadRadius: 1,
                    blurRadius: 8,
                    offset: Offset(-6, -6),
                  )
                ]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Image(
                  image: AssetImage("images/games.png"),
                  width: 50,
                  height: 50,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "Games",
                  style: GoogleFonts.openSans(
                      textStyle: const TextStyle(
                          color: Colors.black87,
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                ),
                const SizedBox(
                  height: 8,
                ),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: onTap3,
          child: Container(
            decoration: BoxDecoration(
                color: isButton3Pressed
                    ? Color.fromARGB(255, 194, 240, 255)
                    : Colors.white,
                borderRadius: BorderRadius.circular(18),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.white,
                    spreadRadius: 1,
                    blurRadius: 8,
                    offset: Offset(4, 4),
                  ),
                  BoxShadow(
                    color: Colors.white,
                    spreadRadius: 1,
                    blurRadius: 8,
                    offset: Offset(-6, -6),
                  )
                ]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Image(
                  image: AssetImage("images/exercise.png"),
                  width: 50,
                  height: 50,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "Exercise",
                  style: GoogleFonts.openSans(
                      textStyle: const TextStyle(
                          color: Colors.black87,
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                ),
                const SizedBox(
                  height: 8,
                ),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: onTap4,
          child: Container(
            decoration: BoxDecoration(
                color: isButton4Pressed
                    ? Color.fromARGB(255, 194, 240, 255)
                    : Colors.white,
                borderRadius: BorderRadius.circular(18),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.white,
                    spreadRadius: 1,
                    blurRadius: 8,
                    offset: Offset(4, 4),
                  ),
                  BoxShadow(
                    color: Colors.white,
                    spreadRadius: 1,
                    blurRadius: 8,
                    offset: Offset(-6, -6),
                  )
                ]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Image(
                  image: AssetImage("images/music.png"),
                  width: 50,
                  height: 50,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "Relaxing Music",
                  style: GoogleFonts.openSans(
                      textStyle: const TextStyle(
                          color: Colors.black87,
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                ),
                const SizedBox(
                  height: 8,
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
