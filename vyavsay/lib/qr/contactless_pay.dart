// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vyavsay/qr/components/button_fills.dart';

class ContactlessPay extends StatelessWidget {
  const ContactlessPay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(360, 800));
    return Scaffold(
      body: Column( 
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top:158.0, ),
              child: SizedBox(
                height: 450.h,
                child: Image(
                  image: AssetImage("Assets/Images/QR code.png"),
                ),
              ),
            ),
          ),
          Image(
            image: AssetImage("Assets/Images/Ellipsis.png"),
            width: 150.w,
            height: 40.h,
          ),
          SizedBox(
            height: 60.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyButtonFills(onPressed: () {}, text: "Download QR code"),
              MyButtonFills(onPressed: () {}, text: "Activate new QR code"),
            ],
          ),
        ],
      ),
    );
  }
}
