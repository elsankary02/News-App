import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/core/utils/api_service.dart';
import 'package:news_app/features/home/data/manger/featch_search_tabs/featch_search_tabs_cubit.dart';
import 'package:news_app/features/home/presentation/tabs/widgets/search_result_widget.dart';
import 'package:news_app/features/home/presentation/tabs/widgets/search_tabs_widget.dart';
import 'package:news_app/features/home/presentation/tabs/widgets/text_filed_widget.dart';

class SearchTabs extends StatelessWidget {
  const SearchTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<FetchSearchTebsCubit>(
        create: (context) => FetchSearchTebsCubit(ApiService(Dio()))
          ..fetchSearch(category: 'business'),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Discover',
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'News from all around the world ',
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFiledWidget(),
              SizedBox(
                height: 20,
              ),
              SearchTabsWidget(),
              SizedBox(
                height: 20,
              ),
              SearchResultWidget(),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ));
  }
}
