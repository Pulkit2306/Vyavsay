// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vyavsay/name/store_banner2.dart';
import 'package:vyavsay/name/store_banners1.dart';

class Name extends StatelessWidget {
  const Name({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(360, 800));
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.h),
        child: AppBar(
          leading: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                ),
              ],
            ),
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          elevation: 0,
          backgroundColor: const Color(0xFF134DA5),
          centerTitle: true,
          title: const Text("Advertising Designs"),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 28.0.w,
          vertical: 35.h,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 25.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Store Banners",
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "View all",
                      style: TextStyle(
                        fontSize: 15.sp,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => StoreBanners(),
                          ),
                        );
                      },
                      icon: Icon(Icons.arrow_circle_right),
                      color: Colors.grey,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 40.h,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: 111.h,
                    width: 190.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        width: 1.w,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Container(
                    height: 111.h,
                    width: 190.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        width: 1.w,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Whatsapp Stories",
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "View all",
                      style: TextStyle(
                        fontSize: 15.sp,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => WhatsApp(),
                          ),
                        );
                      },
                      icon: Icon(Icons.arrow_circle_right),
                      color: Colors.grey,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 40.h,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: 111.h,
                    width: 190.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        width: 1.w,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Container(
                    height: 111.h,
                    width: 190.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        width: 1.w,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
