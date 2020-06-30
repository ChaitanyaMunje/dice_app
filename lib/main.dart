import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
   MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(title: Text('Dice App'),
        backgroundColor: Colors.red,
      ),
      body: DicePage(),


  ),
   ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

 int dice_one=1;
   int dice_two=2;
  @override
  Widget build(BuildContext context) {
    return Center(

        child: Row(
          children: <Widget>[
            SizedBox(width: 20,),
            Expanded(
              child: FlatButton (
                onPressed: () {
                  setState(() {
                    changenum();

                  });
                  print('Button 1 press');

                },
                child: Image.asset('images/dice$dice_one.png'),
              ),
            ),
            // ),
            SizedBox(width: 20,),

            Expanded(

              child: FlatButton(
                onPressed: () {
                  setState(() {
                    changenum();

                  });
                },
                child: Image.asset('images/dice$dice_two.png'),

              ),
            ),
            //   ),
            SizedBox(width: 20,),

          ],
        ),






    );
  }
  void changenum(){
    dice_one=Random().nextInt(6)+1;
    dice_two=Random().nextInt(6)+1;


  }
}


