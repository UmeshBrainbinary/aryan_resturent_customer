import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../../../../util/constant.dart';
import '../../dashboard/views/dashboard_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  final box = GetStorage();

  @override
  void initState() {
    //for foreground state

    super.initState();
    Timer(
      const Duration(milliseconds: 1500),
          () {
        Get.offAll(() => const DashboardView());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            children: [
              Image.asset(Images.splashTop),
              Spacer(),
              Image.asset(Images.splashBot),
            ],
          ),
          Center(
            child: Image.asset(
              Images.splashLogo,
              height: 270.h,
              width: 270.w,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
