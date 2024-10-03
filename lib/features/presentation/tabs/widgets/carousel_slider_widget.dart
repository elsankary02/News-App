import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/features/presentation/home/data/models/news_models.dart';
import '../../../../../core/utils/widget/custom_shimmer.dart';

class CarouselSliderWidget extends StatelessWidget {
  final Articles articles;

  const CarouselSliderWidget({super.key, required this.articles});
  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (BuildContext context) {
        return Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.symmetric(horizontal: 5),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: CachedNetworkImage(
              imageUrl: articles.urlToImage ??
                  'https://www.google.com/imgres?q=ipone%2011&imgurl=https%3A%2F%2Fimg.youm7.com%2Flarge%2F201909150329202920.jpg&imgrefurl=https%3A%2F%2Fwww.youm7.com%2Fstory%2F2019%2F9%2F15%2F9-%25D8%25A3%25D8%25B3%25D8%25A8%25D8%25A7%25D8%25A8-%25D8%25AA%25D8%25AC%25D8%25B9%25D9%2584-%25D8%25A3%25D9%258A%25D9%2581%25D9%2588%25D9%2586-11-%25D8%25A3%25D9%2581%25D8%25B6%25D9%2584-%25D9%2585%25D9%2586-%25D8%25A3%25D9%258A%25D9%2581%25D9%2588%25D9%2586-11-%25D8%25A8%25D8%25B1%25D9%2588%2F4418105&docid=DiZuRGZ8Ac0G0M&tbnid=yrTum9J_Sr297M&vet=12ahUKEwib9dawnPqHAxXPxQIHHe7EFpQQM3oECEEQAA..i&w=380&h=200&hcb=2&ved=2ahUKEwib9dawnPqHAxXPxQIHHe7EFpQQM3oECEEQAA',
              fit: BoxFit.fill,
              placeholder: (context, url) => const CustomShimmer(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
        );
      },
    );
  }
}
