import 'package:flutter/material.dart';
import './Login_Signup_Pages/classSelect.dart';
import './Login_Signup_Pages/childName.dart';
import './Login_Signup_Pages/numberLogin.dart';
import './Login_Signup_Pages//boyGirl.dart';
class HomeMain extends StatefulWidget {
  @override
  _HomeMainState createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {

  bool changeColor1 = false;
  bool changeColor2 = false;
  bool changeColor3 = false;
  bool changeColor4 = false;
  bool changeColor5 = false;
  bool changeColor6 = false;


  PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: PageView(

        controller: pageController,
        //physics: new NeverScrollableScrollPhysics(),       
        children: [
        
        //Children Class Select Page

        Container(

          //Select class of Student Page Start
          child:ClassSelect(

            c1color: !changeColor1 ?  Colors.pink :Colors.greenAccent[400],
            c2color: !changeColor4 ?  Colors.pink :Colors.greenAccent[400],
            c3color: !changeColor5 ?  Colors.pink :Colors.greenAccent[400],
            c4color: !changeColor6 ?  Colors.pink :Colors.greenAccent[400],

            //Class 1 Button

            c1onPress: (){
              setState(() {
               this.changeColor1 =!this.changeColor1;
              });
              pageController.animateToPage(1, duration: Duration(milliseconds:400), curve: Curves.easeIn);
            },

            //Class 2 Button

            c2onPress: (){
              setState(() {
               this.changeColor4 =!this.changeColor4;
              });
              pageController.animateToPage(1, duration: Duration(milliseconds:400), curve: Curves.easeIn);
            },

            //Class 3 Button

            c3onPress: (){
              setState(() {
               this.changeColor5 =!this.changeColor5;
              });
              pageController.animateToPage(1, duration: Duration(milliseconds:400), curve: Curves.easeIn);
            },

            //Class 4 Button

            c4onPress: (){
              setState(() {
               this.changeColor6 =!this.changeColor6;
              });
              pageController.animateToPage(1, duration: Duration(milliseconds:400), curve: Curves.easeIn);
            },

          ),
          ),
          //Select class of Student Page End


         // Girl Boy Select Page Start

         Container(
           
           child:BoyGirlSelect(

             color1: !changeColor2 ?  Colors.pink :Colors.greenAccent[400],
             color2: !changeColor3?  Colors.pink :Colors.greenAccent[400],

            //Boy Button
            onPress: (){
              setState(() {
               this.changeColor2 =!this.changeColor2;
              });
              pageController.animateToPage(2, duration: Duration(milliseconds:400), curve: Curves.easeIn);
            },

            //Girl Button
            onPress1: (){
              setState(() {
               this.changeColor3 =!this.changeColor3;
              });
              pageController.animateToPage(2, duration: Duration(milliseconds:400), curve: Curves.easeIn);
            },
           ) ,
           ),

           // Girl Boy Select Page End


        // Child Name Page
         Container(
           child: ChildName(),
         ),

         //Login Mobile

         Container(
           child: NumberLogin() ,
           )

          ],),
      
    );
  }
}