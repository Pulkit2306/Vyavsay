// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyButtonFills extends StatefulWidget {
  final VoidCallback onPressed;
  final String text;

  // ignore: use_key_in_widget_constructors
  const MyButtonFills({
    required this.onPressed,
    required this.text,
    
  });

  @override
  State<MyButtonFills> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButtonFills> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(360, 800));
    return MaterialButton(
      onPressed: widget.onPressed,
      height: 45,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      
      // padding: const EdgeInsets.symmetric(horizontal: 4,),
      child: Ink(
        decoration: BoxDecoration(
          color:  Color(0xFF134DA5).withOpacity(0.93),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Container(
          height: 40,
          width: 151.w,
          alignment: Alignment.center,
          child: Text(
            widget.text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
              
            ),
          ),
        ),
      ),
    );
  }
}