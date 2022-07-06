// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Tile extends StatelessWidget {
  const Tile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(360, 800));
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 180.h,
          width: 160.w,
          child: Image(
            image: AssetImage("Assets/Images/utensils.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        SizedBox(
          height: 7.h,
        ),
        Container(
          height: 14.h,
          width: 50.w,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 0, 69, 2),
          ),
          child: Center(
            child: Text(
              "55% off",
              style: TextStyle(
                color: Colors.white,
                fontSize: 10.sp,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 13.h,
        ),
        Text(
          "Plate Basket",
          style: TextStyle(
            fontSize: 10.sp,
          ),
        ),
        SizedBox(
          height: 4.h,
        ),
        Row(
          children: [
            Text(
              "₹ 1014",
              style: TextStyle(
                color: Color.fromARGB(255, 34, 52, 67),
                fontSize: 13.sp,
              ),
            ),
            SizedBox(
              width: 9.w,
            ),
            Text(
              "₹ 2254",

              style: TextStyle(
                color: Colors.grey[400],
                fontSize: 9.sp,
                decoration: TextDecoration.lineThrough,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
