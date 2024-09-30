import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/core/utils/api_service.dart';
import 'package:news_app/core/utils/widget/custom_error_massage.dart';
import 'package:news_app/features/home/data/manger/featch_global_tebs/global_tebs_cubit.dart';
import 'package:news_app/features/home/presentation/tabs/widgets/card_details_widget.dart';
import 'package:news_app/features/home/presentation/shimmer/view/shimmer_global_tabs.dart';

class GlobalTabs extends StatelessWidget {
  const GlobalTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) {
        return FeatchGlobalTebsCubit(
          ApiService(
            Dio(),
          ),
        )..featchGlobalTebs();
      },
      child: BlocBuilder<FeatchGlobalTebsCubit, FeatchGlobalTebsState>(
        builder: (context, state) {
          if (state is FeatchGlobalTebsSuccsses) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Global News',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      itemCount: state.news.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: CardDetailsWidget(
                            article: state.news[index],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          } else if (state is FeatchGlobalTebsFaliuer) {
            return CustomErrorMassage(
              errorMessage: state.errorMassge,
            );
          } else {
            return const ShimmerGlobalTabs();
          }
        },
      ),
    );
  }
}
