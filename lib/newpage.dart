import 'package:flutter/material.dart';
import 'InputPage.dart';


class result extends StatelessWidget {
  result({required this.bmiresult,required this.resulttext,required this.interpretation});

  final String bmiresult;
  final String resulttext;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('BMI CALCULATOR',style: TextStyle(fontWeight: FontWeight.bold),)),

        ),
        body: Column(

          children: [
            Expanded(
                child: Container(child: Center(child: Text('Your Result',style: TextStyle(fontSize: 65),)),)),
            Container( color: Colors.blueGrey[900],

              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(child: Text(resulttext,style: TextStyle(fontSize: 60,color: Colors.green,fontWeight: FontWeight.bold),)),
                SizedBox(height: 50,),

                Center(child: Text(bmiresult,style: TextStyle(fontSize: 80),)),
                SizedBox(height: 50,),
                Center(child: Text(interpretation,style: TextStyle(fontSize: 30,color: Colors.white),
                textAlign: TextAlign.center,
                )),
                SizedBox(height: 50),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>InputPage()));
                  },
                  child: Container(
                    child: Center(

                      child: Text(
                        'RE CALCULATE',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),

                    ),
                    color: Colors.deepPurpleAccent,
                    height: 65,
                    width: double.infinity,
                    margin: EdgeInsets.all(10),
                  ),
                )


              ],
            ),),

          ],
        ),
      ),
    );
  }
}
