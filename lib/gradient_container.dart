import 'package:flutter/material.dart';
import 'package:testfrmitkn/dice_roller.dart';
import 'package:testfrmitkn/styled_text.dart';

const startAlignement = Alignment.topLeft;
const endAlignement = Alignment.bottomRight;

class GradientContainer extends StatelessWidget{
   const GradientContainer(this.color1, this.color2,{super.key});
  final Color color1;
  final Color color2;
 
  @override
  Widget build(BuildContext context) {

    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [color1,color2], 
            begin: Alignment.topLeft,
            end: Alignment.bottomRight
          ),
        ),
        child: Center(
          child:DiceRoller(),
          //styled_text("hello mariem"),
          
         
          
        ),
        
      );
  }
  


}

