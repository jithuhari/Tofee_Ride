import 'package:FlutterNewApp/Screens/HomeMain.dart';
import 'package:FlutterNewApp/Screens/Login_Signup_Pages/emailLogin.dart';
import 'package:FlutterNewApp/components/Buttons/btnMain.dart';
import 'package:FlutterNewApp/components/TextField/textField.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
class NumberLogin extends StatefulWidget {
  @override
  _NumberLoginState createState() => _NumberLoginState();
}

class _NumberLoginState extends State<NumberLogin> {
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

            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50)
                ),
              margin:EdgeInsets.fromLTRB(
                                    MediaQuery.of(context).size.width*.099,
                                    MediaQuery.of(context).size.height*.025,
                                    MediaQuery.of(context).size.width*.099,
                                    MediaQuery.of(context).size.height*.005
                                    
                                    ), 
              child: CountryCodePicker(
                initialSelection: 'IN',
                showDropDownButton: true,
                //showFlagMain: false,
                favorite: ['+91','IN'],
                alignLeft: true,
              ),
            ),

            CustomTextField(
              hintText: 'Enter Your Mobile Number',
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
                    builder: (BuildContext context) => EmailLogin()))
                    },

                    child: Text('Login with Email',
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