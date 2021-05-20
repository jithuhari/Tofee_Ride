import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {

  CustomTextField({
    this.hintText,
    this.controller,
    this.typeofKB,
    this.mxlength,
    this.validator
  });

  final String hintText;
  final TextEditingController controller;
  final TextInputType typeofKB;
  final int mxlength;
  final Function validator;
  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
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
  
        
          validator: widget.validator,
          textAlign: TextAlign.center,
          keyboardType: widget.typeofKB,
          controller: widget.controller,
          maxLength: widget.mxlength,
          decoration: InputDecoration(
          hintText:null==widget.hintText ? '' : widget.hintText,
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