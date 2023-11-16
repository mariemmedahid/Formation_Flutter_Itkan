import 'package:flutter/material.dart';
import 'package:testfrmitkn/styled_text.dart';

const startAlignement = Alignment.topLeft;
const endAlignement = Alignment.bottomRight;

class GradientContainer extends StatelessWidget{
   GradientContainer(this.color1, this.color2,{super.key});
  final Color color1;
  final Color color2;
  var activeDiceImage="assets/images/dice_2.jfif";
void RollDice(){
activeDiceImage="assets/images/dice_red.jfif";
print("changing image");
}
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
          child:
          //styled_text("hello mariem"),
          Column(
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
          )
          
        ),
      );
  }
  


}

