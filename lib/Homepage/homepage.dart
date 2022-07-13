import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Color(0xFFFAFBFE),
    ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFBFE),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [appbar(), mission(), distancebox(), carbox()],
          ),
        ),
      ),
    );
  }

  Widget appbar() {
    return Container(
      margin: EdgeInsets.only(left: 16.w),
      child: Row(
        children: [
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100.r)),
            child: Container(
                height: 40.h, width: 40.w, child: const Icon(Icons.arrow_back)),
          ),
          SizedBox(width: 24.w),
          Text(
            "Profit",
            style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }

  Widget mission() {
    return Container(
      margin: EdgeInsets.only(top: 24.h, left: 16.w, right: 16.w),
      child: Row(
        children: [
          Container(
            height: 40.h,
            width: 216.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.r),
                color: Colors.white,
                border: Border.all(color: const Color(0xFFE8EDF7))),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.all(8.r),
                  height: 24.h,
                  width: 23.95.w,
                  child: Image.asset(
                      'images/Screenshot 2022-07-13 at 11.12.13 AM.png'),
                ),
                Container(
                  height: 20.h,
                  alignment: Alignment.centerLeft,
                  width: 39.5.w,
                  child: Text(
                    "100",
                    style:
                        TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400),
                  ),
                ),
                Container(
                  child: const Icon(
                    Icons.add,
                    color: const Color(0xFF56BD93),
                  ),
                ),
                SizedBox(width: 5.w),
                Container(
                  height: 40.h,
                  width: 1.w,
                  color: const Color(0xFFE8EDF7),
                ),
                Container(
                  margin: EdgeInsets.all(8.r),
                  height: 24.h,
                  width: 23.95.w,
                  child: Image.asset(
                      'images/Screenshot 2022-07-13 at 11.21.31 AM.png'),
                ),
                Container(
                  height: 20.h,
                  alignment: Alignment.centerLeft,
                  width: 39.5.w,
                  child: Text(
                    "100",
                    style:
                        TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400),
                  ),
                ),
                Container(
                  child: const Icon(
                    Icons.add,
                    color: Color(0xFF56BD93),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 8.w),
          Container(
            height: 40.h,
            width: 119.w,
            decoration: BoxDecoration(
                color: const Color(0xFF56BD93),
                borderRadius: BorderRadius.circular(16.r)),
            child: Row(
              children: [
                SizedBox(width: 15.w),
                Container(
                    height: 18.sp,
                    width: 17.sp,
                    child: Image.asset(
                      "images/Screenshot 2022-07-13 at 11.27.43 AM.png",
                      fit: BoxFit.cover,
                    )),
                SizedBox(width: 7.w),
                Container(
                  height: 24.h,
                  width: 67.w,
                  alignment: Alignment.center,
                  child: Text(
                    "Missions",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget distancebox() {
    return Container(
      margin: EdgeInsets.only(top: 40.h, left: 16.w, right: 16.w),
      child: Row(
        children: [
          Container(
            height: 96.h,
            width: 159.5.w,
            padding: EdgeInsets.only(left: 16.r, top: 16.r, right: 16.r),
            decoration: BoxDecoration(
                color: const Color(0xFFF5F6FA),
                borderRadius: BorderRadius.circular(20.r),
                border: Border.all(color: const Color(0xFFE8EDF7))),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 20.h,
                      width: 73.w,
                      child: Text(
                        "DISTANCE",
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFF8F9AB9)),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      alignment: Alignment.center,
                      height: 20.h,
                      width: 15.w,
                      child: Image.asset(
                        'images/Screenshot 2022-07-13 at 11.37.29 AM.png',
                      ),
                    )
                  ],
                ),
                SizedBox(height: 12.h),
                Container(
                  height: 32.h,
                  width: 127.5.w,
                  alignment: Alignment.center,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "240",
                        style: TextStyle(
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF3F4C6B)),
                      ),
                      SizedBox(width: 5.w),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [const Text("km"), SizedBox(height: 2.h)],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(width: 24.w),
          Container(
            height: 96.h,
            width: 159.5.w,
            padding: EdgeInsets.only(left: 16.r, top: 16.r, right: 16.r),
            decoration: BoxDecoration(
                color: const Color(0xFFF5F6FA),
                borderRadius: BorderRadius.circular(20.r),
                border: Border.all(color: const Color(0xFFE8EDF7))),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 20.h,
                      width: 73.w,
                      child: Text(
                        "EARNED",
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFF8F9AB9)),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      alignment: Alignment.center,
                      height: 20.h,
                      width: 15.w,
                      child: Image.asset(
                        'images/Screenshot 2022-07-13 at 11.47.33 AM.png',
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 12.h),
                Container(
                  height: 32.h,
                  width: 127.5.w,
                  alignment: Alignment.center,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "230",
                        style: TextStyle(
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF3F4C6B)),
                      ),
                      SizedBox(width: 5.w),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [const Text("WAY"), SizedBox(height: 2.h)],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget carbox() {
    return Container(
      margin: EdgeInsets.only(top: 40.h),
      padding: EdgeInsets.only(top: 16.h, left: 16.w, right: 16.w),
      height: 428.h,
      width: 343.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r), color: Colors.white),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Buick Sheldon",
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF3F4C6B)),
              ),
              const Spacer(),
              const Icon(Icons.refresh)
            ],
          ),
          SizedBox(height: 32.h),
          Container(
            height: 216.h,
            width: 311.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("images/Screenshot 2022-07-13 at 11.57.27 AM.png"),
                Container(
                  height: 40.h,
                  width: 331.w,
                  padding: EdgeInsets.only(left: 12.w),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF4F6FA),
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 20.h,
                        width: 20.w,
                        child: Image.asset(
                            'images/Screenshot 2022-07-13 at 12.01.14 PM.png'),
                      ),
                      SizedBox(width: 4.w),
                      Container(
                        height: 20.h,
                        alignment: Alignment.center,
                        child: Text(
                          "FUEL",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14.sp,
                              color: const Color(0xFF646F8F)),
                        ),
                      ),
                      SizedBox(width: 23.w),
                      Container(
                        width: 172.w,
                        height: 29.h,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 24.h,
                              child: Row(
                                children: [
                                  Text(
                                    "20",
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w500,
                                        color: const Color(0xFF3B9973)),
                                  ),
                                  Text(
                                    "/50",
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w500,
                                        color: const Color(0xFF3F4C6B)),
                                  )
                                ],
                              ),
                            ),
                            LinearPercentIndicator(
                              padding: EdgeInsets.zero,
                              animation: true,
                              lineHeight: 4.0,
                              animationDuration: 2000,
                              percent: 0.4,
                              backgroundColor: Colors.white,
                              barRadius: const Radius.circular(10),
                              progressColor: const Color(0xFF57BD93),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 8.w),
                      Container(
                        width: 20.w,
                        height: 20.h,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: const Color(0xFF57BD93),
                            borderRadius: BorderRadius.circular(100.r)),
                        child: const Icon(
                          Icons.add,
                          size: 20,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 32.h),
          Container(
            height: 48.h,
            width: 331,
            alignment: Alignment.center,
            child: Text(
              "Grab it",
              style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
            decoration: BoxDecoration(
                color: const Color(0xFF55BD93),
                borderRadius: BorderRadius.circular(20.r)),
          ),
          SizedBox(height: 8.h),
          Container(
            height: 32.h,
            width: 311.w,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 20.h,
                  width: 20.w,
                  child: Image.asset(
                      'images/Screenshot 2022-07-13 at 12.24.10 PM.png'),
                ),
                SizedBox(width: 10.w),
                Container(
                  height: 32.h,
                  width: 281.w,
                  child: Text(
                    "Grab 1km will cost 1 Fuel to complete. Fill the Fuel tank to grab more reward. (10 km = 1 WAY)",
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF646F8F)),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
