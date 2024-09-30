import 'package:flutter/material.dart';
import 'package:news_app/constant.dart';
import 'package:news_app/features/home/presentation/shimmer/widget/shimmer_details_widget.dart';
import 'package:news_app/features/home/presentation/shimmer/widget/shimmer_slider_widget.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerHomeTabs extends StatelessWidget {
  const ShimmerHomeTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        baseColor: AppColors.lightGrey,
        highlightColor: Colors.grey,
        period: const Duration(seconds: 2),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SafeArea(
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 25,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    Container(
                      height: 15,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const ShimmerSliderWidget(),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 5,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 25,
                      width: 230,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    Container(
                      height: 15,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    physics: const BouncingScrollPhysics(),
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return const ShimmerDetailsWidget();
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
