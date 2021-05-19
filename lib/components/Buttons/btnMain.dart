import 'package:flutter/material.dart';

class MainButton extends StatefulWidget {
 
  MainButton({this.onPress,this.text,this.color});

  final Function onPress;
  final String text;
  final Color color;

  @override
  _MainButtonState createState() => _MainButtonState();
}

class _MainButtonState extends State<MainButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      color: widget.color,
      margin: EdgeInsets.fromLTRB(
                                  MediaQuery.of(context).size.width/9,
                                  MediaQuery.of(context).size.height*.01,
                                  MediaQuery.of(context).size.width/9,
                                  MediaQuery.of(context).size.height*.01
                                  
                                  ),

      // padding:EdgeInsets.fromLTRB(
      //                             MediaQuery.of(context).size.width*025,
      //                             MediaQuery.of(context).size.width*.2,
      //                             MediaQuery.of(context).size.width*025,
      //                             MediaQuery.of(context).size.width*.2
                                  
      //                             ),
      child: Row(
              children: [
              
              Expanded(
                
                child: RaisedButton(
  
                color: Colors.pink,
  
                onPressed: widget.onPress,
  
                child: Text(widget.text ,

  
                style: TextStyle(

  
                  color: Colors.white,
  
                  fontSize: 20,
  
                  ),
  
                  ),

                  padding:EdgeInsets.fromLTRB(
                                  MediaQuery.of(context).size.width*.05,
                                  MediaQuery.of(context).size.height*.025,
                                  MediaQuery.of(context).size.width*.05,
                                  MediaQuery.of(context).size.height*.025
                                  
                                  ),

                    elevation:10,
  
                    splashColor: Colors.pink,
  
            shape: RoundedRectangleBorder(
  
                borderRadius: BorderRadius.circular(100)
  
            ),      
  
             ),
              ),
],
      ),

    );
  }
}