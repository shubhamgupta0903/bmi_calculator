import 'package:flutter/material.dart';
import 'InputPage.dart';
class RoundButton extends StatefulWidget {
  final IconData icon;
  final VoidCallback onpresed;




  RoundButton({super.key,required this.icon,required this.onpresed});

  @override
  State<StatefulWidget> createState() {
    return _RoundButton();
  }

}
class _RoundButton extends State<RoundButton>{

  @override
  Widget build(BuildContext context) {
    return
        RawMaterialButton(onPressed:widget.onpresed,
          

          child: Icon(widget.icon),
          elevation: 6,
          constraints: BoxConstraints.tightFor(
            width: 56,
            height: 56
          ),

        shape: CircleBorder(),
          fillColor: Colors.deepPurple,
        );


  }

  }




//   RoundButton({required this.icon,required this.onpressed});
//   final IconData icon;
//   final Function  onpressed;
//
//   @override
//   Widget build(BuildContext context) {
//     return RawMaterialButton(onPressed:onpressed,
//       child: Icon(icon),
//       elevation: 6,
//       constraints: BoxConstraints.tightFor(
//         width: 56,
//         height: 56
//       ),
//     shape: CircleBorder(),
//       fillColor: Colors.deepPurple,
//     );
//   }
// }
