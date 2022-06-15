// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyButtonUnfills extends StatefulWidget {
  final void Function()? onPressed;
  final String text;

  // ignore: use_key_in_widget_constructors
  const MyButtonUnfills({
    required this.onPressed,
    required this.text,
    
  });

  @override
  State<MyButtonUnfills> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButtonUnfills> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(360, 800));
    return MaterialButton(
      onPressed: widget.onPressed,
      height: 40,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      
      // padding: const EdgeInsets.symmetric(horizontal: 4,),
      child: Ink(
        // decoration: BoxDecoration(
        //   // color:  Color(0xFF134DA5).withOpacity(0.93),
        //   borderRadius: BorderRadius.circular(8),
        // ),
        child: Container(
          height: 30,
          width: 70.w,
          alignment: Alignment.center,
          child: Text(
            widget.text,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w500,
              fontFamily: "Nunito",
            ),
          ),
        ),
      ),
    );
  }
}