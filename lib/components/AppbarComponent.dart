import 'package:flutter/material.dart';

class CustomAppbar extends PreferredSize{

  final Widget child;
  final double height;
  final Color color; 

  CustomAppbar(
    {
      @required this.child ,
      this.height = kToolbarHeight,
      this.color,
    });


  @override
  
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    
    return Container(
      height:preferredSize.height,
      //color null check
      color: color??Colors.green,
      alignment: Alignment.center,
      child: child,
      
      
      );
  }


}