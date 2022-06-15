// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vyavsay/qr/components/online_apnao_button.dart';

class OnlineApnao extends StatelessWidget {
  const OnlineApnao({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(360, 800));
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  child: Container(
                    color: Color(0xFF134DA5).withOpacity(0.93),
                    height: 316.h,
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 30,
                        left: 25,
                      ),
                      child: Text(
                        "We are online, You can order us directly from our website/App",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 180.h,
                  left: 33.w,
                  child: Card(
                    child: Image(
                      image: AssetImage("Assets/Images/qr-code 1.png"),
                    ),
                  ),
                ),
                Positioned(
                  top: 370.h,
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
                SizedBox(
                  height: 30,
                ),
                Positioned(
                  top: 525.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image(
                        image: AssetImage("Assets/upiLogos/image 2.png"),
                        height: 75,
                        width: 105,
                      ),
                      Image(
                        image: AssetImage("Assets/upiLogos/Phone Pe.png"),
                        height: 75,
                        width: 105,
                      ),
                      Image(
                        image: AssetImage("Assets/upiLogos/image 3.png"),
                        height: 75,
                        width: 105,
                      ),
                      Image(
                        image: AssetImage("Assets/upiLogos/image 4.png"),
                        height: 75,
                        width: 105,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 650.h,
                  child: OnlineApnaoButton(
                    onPressed: () {},
                    text: "Online Apnao, Vyavsay Bdhao ",
                  ),
                ),
                Positioned(
                  top: 712.h,
                  left: 120.w,
                  child: Row(
                    children: [
                      Image(
                        image: AssetImage("Assets/Images/Vyavsay logo.png"),
                      ),
                      Text("Powered by Vyavsay",
                      style: TextStyle(
                        fontSize: 10,
                      ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
