import 'package:flutter/material.dart';
import 'package:testfrmitkn/questions_screen.dart';
import 'package:testfrmitkn/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
 

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;
  @override
  void iniState(){
     activeScreen= StartScreen(switchScreen);
     super.initState();
  }
  
  void switchScreen(){
    setState(() {
      activeScreen=const QuestionsScreen();
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body:Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
Color.fromARGB(255, 26, 2, 80),Color.fromARGB(255, 45, 7, 98)
          ],
          begin: Alignment.topLeft,
            end: Alignment.bottomRight
          ),
           
        ),
     child : activeScreen,
      ),
      //GradientContainer(Color.fromARGB(255, 26, 2, 80),Color.fromARGB(255, 45, 7, 98)),
      
    ),
  );
  }
}