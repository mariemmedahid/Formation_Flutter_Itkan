import 'package:flutter/material.dart';
import 'package:testfrmitkn/styled_text.dart';

class GradientContainer extends StatelessWidget{
  const GradientContainer({super.key});
  @override
  Widget build(BuildContext context) {

    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color.fromARGB(255, 26, 2, 80),Color.fromARGB(255, 45, 7, 98)], 
            begin: Alignment.topLeft,
            end: Alignment.bottomRight
          ),
        ),
        child: Center(
          child:styled_text()
        ),
      );
  }
  


}

