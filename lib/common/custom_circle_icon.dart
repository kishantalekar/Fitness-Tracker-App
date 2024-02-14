import 'package:fitness_tracker_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Custom_circle_icon extends StatelessWidget {
  const Custom_circle_icon({
    super.key,
    required this.icon,
  });

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 20.r,
      backgroundColor: Tcolors.primaryColor,
      child: IconButton(
        icon: Icon(
          icon,
          color: Colors.black,
        ),
        onPressed: () {},
      ),
    );
  }
}
