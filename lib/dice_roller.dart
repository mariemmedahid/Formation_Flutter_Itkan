import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();

}

class _DiceRollerState extends State<DiceRoller> {
   var activeDiceImage="assets/images/dice_2.jfif";
   
void RollDice(){
  setState(() {
    activeDiceImage="assets/images/dice_red.jfif";
  });

}
  @override
  Widget build(BuildContext context) {
    return  Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(activeDiceImage,width: 200,),
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