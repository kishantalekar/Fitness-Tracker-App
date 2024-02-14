import 'package:fitness_tracker_app/utils/constants/assets.dart';
import 'package:fitness_tracker_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Custom_listtile extends StatelessWidget {
  const Custom_listtile({
    super.key,
    required this.title,
    required this.subTitle,
    required this.image,
  });

  final String title;
  final String subTitle;
  final String image;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      tileColor: Tcolors.secondaryColor,
      // style: ListTileStyle.list,
      leading: CircleAvatar(
          radius: 30.r,
          backgroundColor: Tcolors.darkerGrey,
          child: Image.asset(Assets.imagesDumbbell)),
      title: Text(
        "Chest day",
        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.sp),
      ),
      subtitle: Text(
        "170 kcal",
        style: TextStyle(
          color: Tcolors.primaryColor,
          fontWeight: FontWeight.w600,
          fontSize: 16.sp,
        ),
      ),
    );
  }
}


// Container(
//                             padding: EdgeInsets.all(12.w),
//                             decoration: const BoxDecoration(
//                               shape: BoxShape.circle,
//                               color: Tcolors.darkerGrey,
//                               // borderRadius: BorderRadius.circular(24),
//                             ),
//                             child: Image.asset(
//                               Assets.imagesDumbbell,
//                             ))