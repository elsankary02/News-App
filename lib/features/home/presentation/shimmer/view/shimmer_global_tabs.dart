import 'package:flutter/material.dart';
import 'package:news_app/constant.dart';
import 'package:news_app/features/home/presentation/shimmer/widget/shimmer_details_widget.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerGlobalTabs extends StatelessWidget {
  const ShimmerGlobalTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Shimmer.fromColors(
        baseColor: AppColors.lightGrey,
        highlightColor: Colors.grey,
        period: const Duration(seconds: 2),
        child: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 25,
                width: 170,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  physics: const BouncingScrollPhysics(),
                  itemCount: 15,
                  itemBuilder: (context, index) {
                    return const ShimmerDetailsWidget();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
