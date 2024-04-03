import 'package:ariyanrestaurant/app/modules/home/controllers/home_controller.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget homeSlider() {
  return GetBuilder<HomeController>(
    builder: (homeController) => Stack(
      children: [
        Column(
          children: [
            homeController.sliderloder
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : SizedBox(
                    height: 130,
                    child: ListView.builder(
                      itemCount: homeController.sliderAds.length,
                      itemBuilder: (context, index) {
                        final ad = homeController.sliderAds[index];
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: CachedNetworkImage(imageUrl: ad.image ?? ''),
                        );
                      },
                    ),
                  ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                homeController.sliderAds.length,
                (index) => Container(
                  margin: EdgeInsets.symmetric(horizontal: 4),
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: index == homeController.currentImageIndex
                        ? Colors.blue
                        : Colors.grey,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
