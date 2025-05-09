import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  final Color color ;
  final String title;
  final VoidCallback onPress;
  const Mybutton({super.key,required this.onPress,this.color=const Color(0xffa5a5a5), required this.title});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onPress,
        child:

        Padding(
          padding: const EdgeInsets.symmetric(vertical: 7),
          child: Container(
            decoration: BoxDecoration(

              color: color,
              shape: BoxShape.circle,
            ),
            height: 70,
            width: 70,

            child: Center(child: Text(title, style:const TextStyle(fontWeight: FontWeight.w900),), ),
          ),
        ),
      ),
    );
  }
}

