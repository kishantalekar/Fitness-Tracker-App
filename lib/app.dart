import 'package:fitness_tracker_app/features/home/presentation/home_imports.dart';
import 'package:fitness_tracker_app/utils/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, __) {
        return MaterialApp(
          title: 'Fitness-Tracker-App',
          theme: TAppTheme.appTheme,
          home: const HomeScreen(),
        );
      },
    );
  }
}
