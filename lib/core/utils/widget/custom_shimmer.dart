import 'package:flutter/material.dart';
import '../../../constant.dart';
import 'package:shimmer/shimmer.dart';

class CustomShimmer extends StatelessWidget {
  const CustomShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColors.lightGrey,
      highlightColor: Colors.grey,
      child: SizedBox(
        height: 200,
        child: Container(
          height: 500,
          width: 500,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
    );
  }
}
