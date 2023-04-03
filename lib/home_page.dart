// ignore_for_file: no_logic_in_create_state

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
      childAspectRatio: 1.0,
      crossAxisCount: 2,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      children: [
        const SizedBox(
          height: 10,
        ),
        const Padding(padding: EdgeInsets.all(10)),
        GestureDetector(
          onTap: onTap1,
          child: Container(
            decoration: BoxDecoration(
                color: isButton1Pressed
                    ? const Color.fromARGB(255, 186, 185, 185)
                    : Colors.grey.shade100,
                borderRadius: BorderRadius.circular(18),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(255, 0, 0, 0),
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
                    ? const Color.fromARGB(255, 186, 185, 185)
                    : Colors.grey.shade100,
                borderRadius: BorderRadius.circular(18),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(255, 0, 0, 0),
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
                    ? const Color.fromARGB(255, 186, 185, 185)
                    : Colors.grey.shade100,
                borderRadius: BorderRadius.circular(18),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(255, 0, 0, 0),
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
                    ? const Color.fromARGB(255, 186, 185, 185)
                    : Colors.grey.shade100,
                borderRadius: BorderRadius.circular(18),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(255, 0, 0, 0),
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
