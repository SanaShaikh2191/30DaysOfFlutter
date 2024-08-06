import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedTextWidget extends StatelessWidget {
  const AnimatedTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title: Text("Animated Text Widget"),
        ),
        body:
            // Center(
            //   child: SizedBox(
            //     width: 400,
            //     child: TextLiquidFill(
            //       text: 'LIQUIDY',
            //       waveColor: Colors.blueAccent,
            //       boxBackgroundColor: Colors.lightGreen,
            //       textStyle: TextStyle(
            //         fontSize: 80.0,
            //         fontWeight: FontWeight.bold,
            //       ),
            //       boxHeight: 400.0,
            //     ),
            //   ),
            // )
            Center(
          child: Container(
            height: 400,
            width: 400,
            color: Colors.black,
            child: Center(
              child: AnimatedTextKit(
                animatedTexts: [
                  WavyAnimatedText('Hello World',
                      textStyle: TextStyle(fontSize: 30, color: Colors.white)),
                  WavyAnimatedText('Look at the waves',
                      textStyle: TextStyle(fontSize: 30, color: Colors.white)),
                ],
                isRepeatingAnimation: true,
                totalRepeatCount: 5,
              ),
            ),
          ),
        ));
  }
}
