import 'package:flutter/material.dart';
import 'newpage.dart';
import 'bmi_brain.dart';

import 'card.dart';
import 'button.dart';

import 'button.dart';
final Color inactivecardcolor = Colors.grey.shade700;
final Color activecardcolor = Colors.grey.shade800;

enum gender_num { male, female }


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color malecardcolor = inactivecardcolor;
  Color femalecardcolor = inactivecardcolor;

  String label1 = 'Male';
  String label2 = 'Female';
 int height=100;
  int weight = 50;
  int Age = 18;

  void updateColor(gender_num selectedgender) {
    //1--female,2--male
    if (selectedgender == gender_num.female) {
      if (femalecardcolor == inactivecardcolor) {
        femalecardcolor = activecardcolor;
        malecardcolor = inactivecardcolor;
      } else {
        femalecardcolor = inactivecardcolor;
      }
    } else {
      if (malecardcolor == inactivecardcolor) {
        malecardcolor = activecardcolor;
        femalecardcolor = inactivecardcolor;
      } else {
        malecardcolor = inactivecardcolor;
      }
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
      Expanded(

      child: Row(
      children: [
          Expanded(
          child: GestureDetector(
          onTap: () {
             setState(() {
             updateColor(gender_num.female);
              });
           },
              child: gender(
                  colour: femalecardcolor,
                 cardchild: card_child(label2, Icons.female),
                ),
              ),
              ),
               Expanded(
    child: GestureDetector(
    onTap: () {
    setState(() {
    updateColor(gender_num.male);
    });
    },
    child: gender(
    colour: malecardcolor,
    cardchild: card_child(label1, Icons.male),
    ),
    ))
    ],
    )),
    Expanded(child: simplecard(
    cardchild: Column(
    mainAxisAlignment: MainAxisAlignment.center,


    children: [
    Text('Height',
    style: TextStyle(

    fontSize: 20,
    ),),
    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.baseline,
    textBaseline: TextBaseline.alphabetic,
    children: [
    Text(height.toString(),style: TextStyle(
    fontSize: 60,
    fontWeight:FontWeight.w900,

    ),),
    Text('cm')
    ],
    ),
    Slider(value: height.toDouble(),
    min: 100,
    max: 240,
    onChanged: (double newvalue){
    setState(() {
    height=newvalue.toInt();
    });
    },)
    ],
    ),
    )),
    Expanded(
    child: Row(

    children: [
    Expanded(child: simplecard(
    cardchild: Column(


    mainAxisAlignment: MainAxisAlignment.center,

    children: [
    Text('Weight',style: TextStyle(fontSize: 20),),
    Row(
    crossAxisAlignment: CrossAxisAlignment.baseline,
    textBaseline: TextBaseline.alphabetic,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [Text(weight.toString(),style: TextStyle(fontWeight: FontWeight.w900,fontSize: 60),),
    Text('kg')],

    ),
    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    RoundButton(icon: Icons.add,onpresed: (){
      setState(() {
        weight++;
      });
    },),
    SizedBox(width: 14,),
    RoundButton(icon: Icons.remove,onpresed: (){
      setState(() {
        weight--;
      });
    },)
    ],
    )
    ],
    ),
    )),
    Expanded(child: simplecard(
    cardchild: Column(
    children: [
    Text('Age',style: TextStyle(fontSize: 18),),
    Row(
    crossAxisAlignment: CrossAxisAlignment.baseline,
    textBaseline: TextBaseline.alphabetic,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [Text(Age.toString(),style: TextStyle(fontWeight: FontWeight.w900,fontSize: 60),),
    Text('Yr')],

    ),


    Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [RoundButton(icon: Icons.add,onpresed: (){
        setState(() {
          Age++;
        });

      },
    ),



    SizedBox(width: 14,),
    RoundButton(icon: Icons.remove,onpresed: (){
      setState(() {
        Age--;
      });
    },)
    ],)
    ],)

    )


    ),

    ],
    )),
         GestureDetector(
           onTap: (){
             calculatorbrain calci=calculatorbrain(height: height, weight: weight);
             Navigator.push(context, MaterialPageRoute(builder: (context)=>result(
               bmiresult: calci.calculatebmi(),
               resulttext: calci.getresult(),
               interpretation: calci.getinterpretation(),
             )));
           },
           child: Container(
               child: Center(

                 child: Text(
                 'CALCULATE',
                 style: TextStyle(color: Colors.white, fontSize: 20),
                 ),

               ),
               color: Colors.deepPurpleAccent,
               height: 65,
               width: double.infinity,
               margin: EdgeInsets.all(10),
               ),
         )
    ]
    ,
    )
    );
  }

  Column card_child(var label, IconData iconname) {
    return Column(
      children: [
        Expanded(
            child: Icon(
              iconname,
              size: 80,
            )),
        SizedBox(
          height: 10,
        ),
        Text(
          label,
          style: TextStyle(fontSize: 20),
        )
      ],
    );
  }
}
