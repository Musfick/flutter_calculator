import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new HomePageState();

}

class HomePageState extends State<HomePage> {

  var firstNumber = 0;
  var secondNumber = 0;
  var sum = 0;

  final TextEditingController firstNumController = new TextEditingController(text: '0');
  final TextEditingController secondNumController = new TextEditingController(text: "0");

  //Addition two number
  void addition() => setState(() {
    firstNumber = int.parse(firstNumController.text);
    secondNumber = int.parse(secondNumController.text);
    sum = firstNumber+secondNumber;
  });

  //Substract two number
  void substract() => setState((){
    firstNumber = int.parse(firstNumController.text);
    secondNumber = int.parse(secondNumController.text);
    sum = firstNumber-secondNumber;
  });

  //Multiply two number
  void multiply () => setState((){
    firstNumber = int.parse(firstNumController.text);
    secondNumber = int.parse(secondNumController.text);
    sum = firstNumber*secondNumber;
  });

  //Divide two number
  void divide () => setState((){
    firstNumber = int.parse(firstNumController.text);
    secondNumber = int.parse(secondNumController.text);
    sum = (firstNumber / secondNumber).floor();
  });



  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text('Calculator'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 18.0, top: 24.0, right: 18.0 ),
               child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: new InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter First Number',
                      labelText: 'First Number'
                  ),
                 controller: firstNumController,
                )
            ),
            Padding(
              padding: EdgeInsets.only(left: 18.0, top: 24.0, right: 18.0 ),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Second Number',
                  labelText: 'Second Number'
                ),
                controller: secondNumController,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 18.0, top: 24.0, right: 18.0, bottom: 24.0 ),
              child: Text(
                'Result $sum',
                style: TextStyle(
                  fontSize: 22
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  child: FlatButton(
                    child: Text('+', style: TextStyle(
                        fontSize: 20.0,
                      color: Colors.white),
                    ),
                    color: Colors.red,
                    onPressed: addition,
                  ),
                ),
                Container(
                  child: FlatButton(
                    child: Text('-', style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white
                    ),),
                    color: Colors.red,
                    onPressed: substract,
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.all(10),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  child: FlatButton(
                    child: Text('*', style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white
                    ),),
                    color: Colors.red,
                    onPressed: multiply,
                  ),
                ),
                Container(
                  child: FlatButton(
                    child: Text('/', style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white
                    ),),
                    color: Colors.red,
                    onPressed: divide,
                  ),
                )
              ],
            )

          ],
        ),

      ),
    );
  }

}