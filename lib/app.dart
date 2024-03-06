import 'package:fitness_tracker_app/common/common_imports.dart';
import 'package:fitness_tracker_app/core/error.dart';
import 'package:fitness_tracker_app/features/auth/controller/auth_controller.dart';
import 'package:fitness_tracker_app/features/auth/view/Auth.dart';
import 'package:fitness_tracker_app/features/home/view/home_imports.dart';
import 'package:fitness_tracker_app/utils/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class App extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, __) {
        return MaterialApp(
          title: 'Fitness-Tracker-App',
          theme: TAppTheme.appTheme,
          home: ref.watch(currentUserProvider).when(
              data: (data) {
                if (data == null) {
                  return LoginView();
                }
                return HomeScreen();
              },
              error: (err, st) => ErrorPage(error: err.toString()),
              loading: () => LoadingPage()),
        );
      },
    );
  }
}
