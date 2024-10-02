import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/core/utils/widget/custom_error_massage.dart';
import 'package:news_app/features/home/data/manger/featch_search_tabs/featch_search_tabs_cubit.dart';
import 'package:news_app/features/home/presentation/shimmer/view/shimmer_card_details.dart';
import 'package:news_app/features/home/presentation/tabs/widgets/card_details_widget.dart';

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchSearchTebsCubit, FetchSearchTebsState>(
      builder: (context, state) {
        if (state is FetchSearchTebsSuccess) {
          return Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: state.news.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: CardDetailsWidget(article: state.news[index]),
                );
              },
            ),
          );
        } else if (state is FetchSearchTebsFailuer) {
          return CustomErrorMassage(errorMessage: state.errorMassage);
        } else {
          return const Expanded(child: CardDetailsShimmer());
        }
      },
    );
  }
}
