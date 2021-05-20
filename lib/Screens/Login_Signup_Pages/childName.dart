import 'package:FlutterNewApp/components/Buttons/btnMain.dart';
import 'package:FlutterNewApp/components/TextField/textField.dart';
import 'package:flutter/material.dart';

final GlobalKey<FormState>_formkey = GlobalKey<FormState>();

class ChildName extends StatefulWidget {

  @override
  _ChildNameState createState() => _ChildNameState();
}

class _ChildNameState extends State<ChildName> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    body: SingleChildScrollView(
          child: Form(
           
          key: _formkey,
          
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

              
              Text('My Child Name Is',
              
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w900,
              ),
              ),

              SizedBox(height: MediaQuery.of(context).size.height/30,),

              CustomTextField(
                
                validator: (value){
                  if(value.isEmpty){
                    return 'Enter your child name';
                  }
                },
                hintText: 'Enter Your Childs name',
                typeofKB: TextInputType.name,
              ),

              //pinkButtonLarge 

             MainButton(
               onPress: (){
                 if(!_formkey.currentState.validate()){
                   return;
                 }
               },
               text: 'Continue',
             ),

             SizedBox(height: MediaQuery.of(context).size.height/1.5,),

              
             
            ],
        ),
      ),
          ),
    ),
      
    );
  }
}