import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {

  CustomTextField({
    this.hintText,
    this.controller
  });

  final String hintText;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(

      margin: EdgeInsets.fromLTRB(
                                  MediaQuery.of(context).size.width/9,
                                  MediaQuery.of(context).size.height*.01,
                                  MediaQuery.of(context).size.width/9,
                                  MediaQuery.of(context).size.height*.01
                                  
                                  ),

      child: TextFormField(
        
          controller: controller,
          
          decoration: InputDecoration(
          hintText:null==hintText ? '' : hintText,
          filled: true,
          fillColor:Colors.white ,

          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide(
              width: 0,
              color: Colors.white
            )
          ),

          focusedBorder: OutlineInputBorder(

            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              width: 0,
              color: Colors.white
            )

          )

        ),
        
        
      ),
      
      
    );
  }
}