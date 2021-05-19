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
          child:ClassSelect(
            onPress: (){
              pageController.animateToPage(1, duration: Duration(milliseconds:400), curve: Curves.easeIn);
            },
          ),
          ),

         // Girl Boy Select

         Container(
           
           child:BoyGirlSelect(
             onPress: (){
              pageController.animateToPage(2, duration: Duration(milliseconds:400), curve: Curves.easeIn);
            },
           ) ,
           ),

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