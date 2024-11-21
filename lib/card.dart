import 'package:flutter/material.dart';


class gender extends StatelessWidget {


  final Color colour;
  final Widget cardchild;

  gender({required this.colour,required this.cardchild});

  @override
  Widget build(BuildContext context) {
    return Container(


          child: cardchild,


      margin: EdgeInsets.all(14),
      decoration: BoxDecoration(
          color: colour ,
          borderRadius: BorderRadius.circular(12)
      ),

    );
  }
}


class simplecard extends StatelessWidget {


  final Widget cardchild;
  simplecard({required this.cardchild});

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: cardchild,


      margin: EdgeInsets.all(14),
      decoration: BoxDecoration(
          color: Colors.grey[700],
          borderRadius: BorderRadius.circular(12)
      ),

    );
  }
}



