// ignore_for_file: prefer_const_constructors. prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DigitalIndia extends StatelessWidget {
  const DigitalIndia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(360, 800));
    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                alignment: Alignment.topRight,
                color: const Color(0xFF134DA5).withOpacity(0.93),
                height: 415.h,
              ),
              Positioned(
                top: 80.h,
                left: 40.w,
                width: 220.w,
                child: Text(
                  "     We Love #DigitalIndia ",
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.left,
                  textDirection: TextDirection.ltr,
                  maxLines: 2,
                ),
              ),
              Positioned(
                top: 115.h,
                left: 255.w,
                child: Image(
                  image: AssetImage("Assets/Images/India.png"),
                ),
              ),
              Positioned(
                  top: 280.h,
                  left: 37.w,
                  child: Image(
                    image: AssetImage("Assets/Images/qr-code 1.png"),
                    fit: BoxFit.fill,
                    height: 260.h,
                    width: 280.w,
                  ),
                ),
                Positioned(
                  top: 470.h,
                  child: RotatedBox(
                    quarterTurns: 175,
                    child: Text(
                      "WQR001",
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: "Libre Baskerville",
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 642.h,
                  left: 65.w,
                  child: Row(
                    children: [
                      Image(
                        image: AssetImage("Assets/Images/Vyavsay logo.png"),
                        height: 50.h,
                        width: 60.w,
                        fit: BoxFit.fill,
                      ),
                      Text("Powered by Vyavsay",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
