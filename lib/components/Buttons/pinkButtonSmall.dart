import 'package:flutter/material.dart';

class PinkButtonSmall extends StatefulWidget {
 
  PinkButtonSmall({this.onPress,this.text,this.color});

  final Function onPress;
  final String text;
  final Color color;

  @override
  _PinkButtonSmallState createState() => _PinkButtonSmallState();
}

class _PinkButtonSmallState extends State<PinkButtonSmall> {

   

  @override
  Widget build(BuildContext context) {
    return Container(
      
      color: null,
      margin: EdgeInsets.fromLTRB(
                                  MediaQuery.of(context).size.width/4.5,
                                  0,
                                  MediaQuery.of(context).size.width/4.5,
                                  MediaQuery.of(context).size.height*.01
                                  
                                  ),
      child: Row(
              children: [
              
              Expanded(
                
                child: RaisedButton(
              
                color:widget.color,
  
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