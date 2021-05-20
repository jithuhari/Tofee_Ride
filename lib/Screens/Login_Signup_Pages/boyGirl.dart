import 'package:flutter/material.dart';
import 'package:FlutterNewApp/components/Buttons/pinkButtonSmall.dart';

class BoyGirlSelect extends StatefulWidget {

  BoyGirlSelect({this.onPress,this.onPress1,this.color1,this.color2});
  final Function onPress;
  final Function onPress1;
  final Color color1;
  final Color color2;

  @override
  _BoyGirlSelectState createState() => _BoyGirlSelectState();
}

class _BoyGirlSelectState extends State<BoyGirlSelect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:SingleChildScrollView(
          child: Container(

        //Background image 
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/Signup/sky1.jpg'),
            fit: BoxFit.fill,
          )
        ),

        child: Column(

          children: [

            SizedBox(height: MediaQuery.of(context).size.height/9.5,),

            
            Text('My child is a',
            
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w900,
            ),
            ),

            SizedBox(height: MediaQuery.of(context).size.height/30,),

            Image(
              height: MediaQuery.of(context).size.height*.1,
              image: AssetImage('assets/images/Signup/boy.jpg'),),

            Center(
              child: PinkButtonSmall(
                color: widget.color1,
                text: 'BOY',
                 onPress:widget.onPress,
              ),
            ),

            SizedBox(height: MediaQuery.of(context).size.height/30,),

            Image(
              height: MediaQuery.of(context).size.height*.1,
              image: AssetImage('assets/images/Signup/girl.jpg'),),

            Center(
              child: PinkButtonSmall(
                color: widget.color2,
                text: 'GIRL',
                 onPress:widget.onPress1,
              ),
            ),
            
           SizedBox(height: MediaQuery.of(context).size.height/2.5,),

            
           
          ],
        ),
      ),
    ),
      
    );
  }
}