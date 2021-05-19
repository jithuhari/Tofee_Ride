import 'package:FlutterNewApp/Screens/HomeMain.dart';
import 'package:FlutterNewApp/Screens/Login_Signup_Pages/numberLogin.dart';
import 'package:FlutterNewApp/components/Buttons/btnMain.dart';
import 'package:FlutterNewApp/components/TextField/textField.dart';
import 'package:flutter/material.dart';
class EmailLogin extends StatefulWidget {
  @override
  _EmailLoginState createState() => _EmailLoginState();
}

class _EmailLoginState extends State<EmailLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    body: SingleChildScrollView(
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

            
            Text('Login here',
            
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w900,
            ),
            ),

            SizedBox(height: MediaQuery.of(context).size.height/11,),

            CustomTextField(
              hintText: 'Enter Your Email Address',
            ),

            //pinkButtonLarge 

           MainButton(
             onPress: (){},
             text: 'Continue',
           ),

           SizedBox(height: MediaQuery.of(context).size.height/35,),


           InkWell(

                     onTap: ()=>{

                    Navigator.push(
                    context,
                    MaterialPageRoute(
                    builder: (BuildContext context) => NumberLogin()))
                    },

                    child: Text('Login with Mobile',
                    style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 18,
              ),
              ),
            ),
   

            SizedBox(height: MediaQuery.of(context).size.height/3,),

            InkWell(

                     onTap: ()=>{

                    Navigator.push(
                    context,
                    MaterialPageRoute(
                    builder: (BuildContext context) => HomeMain()))
                    },

                    child: Text('New user ? Signup now',
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