import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:news_app/constant.dart';
import 'package:news_app/core/utils/widget/custom_shimmer.dart';
import 'package:news_app/features/home/data/models/news_models.dart';

import 'package:news_app/features/home/presentation/tabs/widgets/icon_and_date.dart';

class CardDetailsWidget extends StatelessWidget {
  const CardDetailsWidget({super.key, required this.article});
  final Articles article;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: SizedBox(
              height: 120,
              width: 120,
              child: CachedNetworkImage(
                fit: BoxFit.fill,
                imageUrl: article.urlToImage ??
                    'https://www.google.com/imgres?q=ipone%2011&imgurl=https%3A%2F%2Fimg.youm7.com%2Flarge%2F201909150329202920.jpg&imgrefurl=https%3A%2F%2Fwww.youm7.com%2Fstory%2F2019%2F9%2F15%2F9-%25D8%25A3%25D8%25B3%25D8%25A8%25D8%25A7%25D8%25A8-%25D8%25AA%25D8%25AC%25D8%25B9%25D9%2584-%25D8%25A3%25D9%258A%25D9%2581%25D9%2588%25D9%2586-11-%25D8%25A3%25D9%2581%25D8%25B6%25D9%2584-%25D9%2585%25D9%2586-%25D8%25A3%25D9%258A%25D9%2581%25D9%2588%25D9%2586-11-%25D8%25A8%25D8%25B1%25D9%2588%2F4418105&docid=DiZuRGZ8Ac0G0M&tbnid=yrTum9J_Sr297M&vet=12ahUKEwib9dawnPqHAxXPxQIHHe7EFpQQM3oECEEQAA..i&w=380&h=200&hcb=2&ved=2ahUKEwib9dawnPqHAxXPxQIHHe7EFpQQM3oECEEQAA',
                placeholder: (context, url) => const CustomShimmer(),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                article.source!.name!,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColors.grey,
                ),
              ),
              SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width * .6,
                child: Text(
                  article.description!,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              IconAndDate(
                date: article.publishedAt!,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
