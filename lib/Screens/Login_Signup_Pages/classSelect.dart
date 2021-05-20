
import 'package:FlutterNewApp/Screens/Login_Signup_Pages/emailLogin.dart';
import 'package:FlutterNewApp/components/Buttons/pinkButtonSmall.dart';
import 'package:flutter/material.dart';
class ClassSelect extends StatefulWidget {

  ClassSelect({
    this.c1onPress,
    this.c1color,
    this.c2onPress,
    this.c2color,
    this.c3onPress,
    this.c3color,
    this.c4onPress
    ,this.c4color
    });
    
  final Function c1onPress;
  final Color c1color;
  final Function c2onPress;
  final Color c2color;
  final Function c3onPress;
  final Color c3color;
  final Function c4onPress;
  final Color c4color;
   
  @override
  _ClassSelectState createState() => _ClassSelectState();
}

class _ClassSelectState extends State<ClassSelect> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    body: SingleChildScrollView(
          child: Container(

        //Background image 
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/Signup/sky1.jpg'),
            fit: BoxFit.cover
          )
        ),

        child: Column(

          children: [

            SizedBox(height: MediaQuery.of(context).size.height/9.5,),

            
            Text('My child is in',
            
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w900,
            ),
            ),

            SizedBox(height: MediaQuery.of(context).size.height/11,),

            //pinkButtonSmall 1

            Center(
              child: PinkButtonSmall(
                color: widget.c1color,
                onPress:widget.c1onPress,
                text: 'Class 1',
                
              ),
            ),

            //pinkButtonSmall 2

            Center(
              child: PinkButtonSmall(
                onPress:widget.c2onPress,
                 color: widget.c2color,
                text: 'Class 2',
                
              ),
            ),

            //pinkButtonSmall 3

            Center(
              child: PinkButtonSmall(
                onPress:widget.c3onPress,
                 color: widget.c3color,
                text: 'Class 3',
                
              ),
            ),

            //pinkButtonSmall 4

            Center(
              child: PinkButtonSmall(
                onPress:widget.c4onPress,
                 color: widget.c4color,

                text: 'Class 4',
                
              ),
            ),

            SizedBox(height: MediaQuery.of(context).size.height/4.5,),

            InkWell(

                    onTap: ()=>{

                    Navigator.push(
                    context,
                    MaterialPageRoute(
                    builder: (BuildContext context) => EmailLogin()))
                    },

                    child: Text('Already has an account ? Login',
                    style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 18,
              ),
              ),
            ),

            

            
          ],
        ),
      ),
    ),
      
    );
  }
}