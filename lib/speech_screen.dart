import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'colors.dart';
import 'package:speech_to_text/speech_to_text.dart';

class SpeechScreen extends StatefulWidget {
  const SpeechScreen({super.key});
  @override
  State<SpeechScreen> createState() => _SpeechScreenState();
}

class _SpeechScreenState extends State<SpeechScreen> {
  SpeechToText speechToText = SpeechToText();

  var text = 'hold the button and start speaking';
  var isListening = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: AvatarGlow(
        animate: isListening,
        glowColor: bgColor,
        endRadius: 75.0,
        duration: const Duration(milliseconds: 2000),
        repeat: true,
        showTwoGlows: true,
        repeatPauseDuration: const Duration(milliseconds: 100),
        child: Material(
          elevation: 5,
          shape: const CircleBorder(),
          child: GestureDetector(
            onTapDown: (details) async {
              if (!isListening) {
                bool avail = await speechToText.initialize();
                if (avail) {
                  setState(() {
                    isListening = true;
                  });
                  speechToText.listen(onResult: (value) {
                    setState(() {
                      text = value.recognizedWords;
                    });
                  });
                }
              } else {
                setState(() {
                  isListening = false;
                });
                speechToText.stop();
              }
            },
            child: CircleAvatar(
              backgroundColor: bgColor,
              radius: 35,
              child: Icon(
                isListening ? Icons.chat_bubble_outline : Icons.mic_none,
                color: textColor,
                size: 50,
              ),
            ),
          ),
        ),
      ),
      appBar: AppBar(
        leading: const Icon(
          Icons.sort_rounded,
          color: Colors.white,
        ),
        centerTitle: true,
        backgroundColor: bgColor,
        elevation: 0.0,
        title: const Text(
          'Speech to text',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: textColor,
          ),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        margin: const EdgeInsets.only(bottom: 150),
        child: Text(
          text,
          style: const TextStyle(
              fontSize: 20, color: Colors.black54, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
