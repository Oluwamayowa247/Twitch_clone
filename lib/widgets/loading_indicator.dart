import 'package:flutter/material.dart';
import 'package:twitch_clone/utils/colors.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 50,
        height: 50,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              'lib/assets/images/twitch1.png',
              fit: BoxFit.cover,
              width: 30,
              height: 30,
            ),
            CircularProgressIndicator(
              color: buttonColor,
            )
    
          ],
        ),
      ),
    );
  }
}
