import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MacroWidget extends StatelessWidget{
  final String title;
  final int value;
  final IconData icon;

  const MacroWidget({super.key, required this.title, required this.value, required this.icon});
  @override
  Widget build(BuildContext context){
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                offset: Offset(2,2),
                blurRadius: 5,
                color: Colors.grey.shade400,
              ),
            ]
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              FaIcon(icon, color: Colors.red,),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  title == 'Calories' ?
                  '$title $value' : '$value g \n$title', style: TextStyle(
                  fontSize: 10,
                ),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}