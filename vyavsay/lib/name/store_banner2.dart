// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:io';
import 'dart:typed_data';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:path_provider/path_provider.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

class WhatsApp extends StatefulWidget {
  const WhatsApp({Key? key}) : super(key: key);

  @override
  State<WhatsApp> createState() => _WhatsAppState();
}

class _WhatsAppState extends State<WhatsApp> {
  int currentIndex = 1;
  int total = imgList.length;
  int index = 2;

  Widget imageSlide() {
    return Image.network(
      imgList[index % imgList.length],
      fit: BoxFit.cover,
    );
  }
  final controller = ScreenshotController();
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
          title: const Text("Store Banners"),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 18.0.w,
          vertical: 28.h,
        ),
        child: Column(
          children: [
            // CarouselSlider(
            //   options: CarouselOptions(
            //     height: 177.h,
            //     viewportFraction: 1,
            //     initialPage: 0,
            //     enableInfiniteScroll: true,
            //     autoPlay: true,
            //     autoPlayInterval: Duration(seconds: 3),
            //     autoPlayAnimationDuration: Duration(milliseconds: 800),
            //     scrollDirection: Axis.horizontal,
            //   ),
            //   items: imgList
            //       .map(
            //         (item) => Container(
            //           child: Center(
            //             child: Image.network(
            //               item,
            //               fit: BoxFit.cover,
            //               width: 99.w,
            //               height: 177.h,
            //             ),
            //           ),
            //         ),
            //       )
            //       .toList(),
            // ),
            SizedBox(
              height: 177.h,
              width: 99.w,
              child: PageView.builder(
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18.0.w),
                    child: SizedBox(
                      height: 177.h,
                      width: 99.w,
                      child: InkWell(
                        child: imageSlide(),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 10.h,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // for (var i = 0; i < imgList.length;)
                Text("$currentIndex/$total"),
              ],
            ),
            SizedBox(
              height: 150.h,
            ),
            MaterialButton(
              onPressed: () async {
                final image = await controller.captureFromWidget(
                  imageSlide(),
                );

                saveAndShare(image);
              },
              child: Container(
                height: 47.h,
                width: 161.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF134DA5),
                ),
                child: Center(
                  child: Text(
                    "Share",
                    style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future saveAndShare(Uint8List bytes) async {
    final directory = await getApplicationDocumentsDirectory();
    final image = File('${directory.path}/flutter.png');
    image.writeAsBytesSync(bytes);

    await Share.shareFiles([image.path]);
  }

}
