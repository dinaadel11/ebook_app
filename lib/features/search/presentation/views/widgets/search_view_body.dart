import 'package:flutter/material.dart';
import 'package:newsapp/core/utils/styles.dart';
import 'package:newsapp/features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:newsapp/features/search/presentation/views/widgets/search_result_list_view.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          CustomSearchTextField(),
          SizedBox(
            height: 15,
          ),
          Text(
            'Search Result',
            style: Styles.textstyle18,
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: SearchResultListView(),
          ),
        ],
      ),
    );
  }
}
