import 'package:flutter/material.dart';
import 'package:testfrmitkn/gradient_container.dart';
import 'package:testfrmitkn/styled_text.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz,{super.key});
 final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return Center(
      child :Column(
        mainAxisSize: MainAxisSize.min,
        children: [

          Opacity(opacity: 0.5,
            child: Image.asset("assets/images/quiz.png",width: 300,)),
         SizedBox(height: 80,),
          Text("learn flutter the  fun way",style: TextStyle(color: Color.fromARGB(255, 237, 223, 252),fontSize: 24),),
          SizedBox(height: 30,),
          OutlinedButton.icon(onPressed:startQuiz,style:OutlinedButton.styleFrom(foregroundColor: Colors.white) ,
          icon: Icon(Icons.arrow_right_alt),
           label: Text("start quiz")),
        ],
      ),
      
    );
  }
}