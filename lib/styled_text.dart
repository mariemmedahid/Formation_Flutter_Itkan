import 'package:flutter/material.dart';

class styled_text extends StatelessWidget {
  const styled_text( this.text,{super.key});
  final String text;

  @override
  Widget build(BuildContext context) {
    return  Text(text,style: TextStyle(color: Colors.white,fontSize: 28),);
        
  }
}