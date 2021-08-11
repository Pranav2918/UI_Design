import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:task_5/screens/websection/weblesson/data/popular_topics.dart';

// ignore: must_be_immutable
class SubjectCard extends StatelessWidget {
  final size = 760;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25.w),
      child: GridView.builder(
        itemCount: popularTopics.length,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: MediaQuery.of(context).size.width >= size &&
                    MediaQuery.of(context).size.width <= 1200
                ? 0.70
                : MediaQuery.of(context).size.width >= 1201 &&
                        MediaQuery.of(context).size.width <= 1450
                    ? 0.9
                    : 1.2,
            crossAxisCount: 4,
            mainAxisSpacing: 10.h,
            crossAxisSpacing: 10.w),
        itemBuilder: (context, index) {
          return Card(
            elevation: 1.0,
            child: Container(
                color: Colors.white,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10.0.w, top: 15.h),
                        child: Text(popularTopics[index]['num'],
                            style: TextStyle(
                                color: Colors.grey.shade700,
                                fontSize:
                                    MediaQuery.of(context).size.width > size &&
                                            MediaQuery.of(context).size.width <=
                                                1200
                                        ? 22
                                        : 66,
                                letterSpacing: 1.0.sp)),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10.0.w, top: 30.h),
                            child: Text(popularTopics[index]['name'],
                                style: TextStyle(
                                    fontSize: MediaQuery.of(context)
                                                    .size
                                                    .width >
                                                size &&
                                            MediaQuery.of(context).size.width <=
                                                1200
                                        ? 12
                                        : 18,
                                    letterSpacing: 1.0.sp,
                                    fontWeight: FontWeight.bold)),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10.0.w),
                            child: Text(popularTopics[index]['subject'],
                                style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.width >
                                              size &&
                                          MediaQuery.of(context).size.width <=
                                              1200
                                      ? 12
                                      : 16,
                                  color: Colors.grey,
                                  letterSpacing: 1.0.sp,
                                )),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              margin: EdgeInsets.only(right: 8.w, bottom: 10.h),
                              child: Icon(Icons.arrow_forward_ios,
                                  color: Colors.grey,
                                  size: MediaQuery.of(context).size.width >
                                              size &&
                                          MediaQuery.of(context).size.width <=
                                              1200
                                      ? 15
                                      : 18),
                            ),
                          )
                        ],
                      ),
                    ])),
          );
        },
      ),
    );
  }
}
