import 'package:flutter/material.dart';
import 'package:udemy/style_text.dart';
import 'dart:math';
final randomizer=Random();
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatefulWidget {

   GradientContainer({
    required this.colors,
    super.key,
  });
   final List<Color> colors;

  @override
  State<GradientContainer> createState() => _GradientContainerState();
}

class _GradientContainerState extends State<GradientContainer> {
   var currentDiceRoll=2;
   rollDice(){
     //it give random value form 1 to 6
      currentDiceRoll=randomizer.nextInt(6)+1;

     setState(() {

     });

   }


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: widget.colors, begin: startAlignment, end: endAlignment)),
      child: Center(
        //image set
        child: Column(
          mainAxisSize: MainAxisSize.min,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset( "image/dice-$currentDiceRoll.png",
              width: 200,
            ),
            SizedBox(height: 20,),
            TextButton(
                onPressed: () {
                  rollDice();
                },
                style: TextButton.styleFrom(foregroundColor: Colors.white,textStyle: const TextStyle(fontSize: 28)),
                child: const Text("Roll Dice"))
          ],
        ),
      ),
    );
  }
}
