import 'dart:math';

import 'package:flutter/material.dart';
final randomizer=Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();

}

class _DiceRollerState extends State<DiceRoller> {
   //var activeDiceImage="assets/images/dice_2.jfif";
   var currentDiceRoll=2;
   
void RollDice(){
  setState(() {
   // activeDiceImage="assets/images/dice_red.jfif";
   currentDiceRoll=Random().nextInt(6) + 1;
  });

}
  @override
  Widget build(BuildContext context) {
    return  Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset("assets/images/dice_$currentDiceRoll.jfif",width: 200,),
              SizedBox(height: 20,),
              TextButton(onPressed: RollDice, 
              style: TextButton.styleFrom(
               // padding: EdgeInsets.only(top: 20),
                foregroundColor: Colors.white,textStyle: TextStyle(fontSize: 28)),
              child: Text("Roll dice"))
            ],
          );
  }
}