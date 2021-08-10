import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_5/screens/websection/weblesson/data/mathdetail.dart';

class SubjectDetailWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(768, 702),
      builder: () => Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back, color: Colors.black)),
          title: appbarField(),
          centerTitle: true,
          actions: [
            Padding(
              padding: EdgeInsets.all(8.0.w),
              child: Container(
                height: 30.h,
                width: 30.w,
                decoration: BoxDecoration(
                    color: Colors.blue[700], shape: BoxShape.circle),
                child: Center(
                  child: Icon(Icons.person, color: Colors.white, size: 18.sp),
                ),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(left: 25.w, right: 25.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 22),
                Text('197 Results',
                    style: TextStyle(color: Colors.grey, fontSize: 16.sp)),
                SizedBox(height: 22),
                detailTile()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget appbarField() {
  return Container(
    height: 40.sp,
    decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(28.r)),
    child: TextFormField(
      decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 10.w, bottom: 10.h),
          border: InputBorder.none,
          hintText: 'Mathamatik',
          hintStyle: TextStyle(fontSize: 16.sp, color: Colors.blueGrey[900])),
    ),
  );
}

Widget detailTile() {
  return ListView.builder(
    shrinkWrap: true,
    itemCount: topics.length,
    itemBuilder: (context, index) {
      return Padding(
        padding: EdgeInsets.only(top: 8.0.h),
        child: Card(
            elevation: 2.0,
            child: Container(
                margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      topics[index]['title'],
                      style: TextStyle(
                          color: Colors.blueGrey[900],
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(topics[index]['site'],
                        style: TextStyle(color: Colors.grey)),
                    SizedBox(height: 8),
                    Text(
                      topics[index]['subtitle'],
                      style: TextStyle(fontSize: 14.sp),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Icon(Icons.arrow_upward,
                          color: Colors.blue, size: 18.sp),
                    )
                  ],
                ))),
      );
    },
  );
}
