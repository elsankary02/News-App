import 'package:flutter/material.dart';
import '../../../../../constant.dart';
import '../widget/shimmer_details_widget.dart';
import 'package:shimmer/shimmer.dart';

class CardDetailsShimmer extends StatelessWidget {
  const CardDetailsShimmer({super.key});

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
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
