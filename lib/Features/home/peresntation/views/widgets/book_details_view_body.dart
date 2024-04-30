import 'package:bookappp/Features/home/peresntation/views/widgets/book_details_section.dart';
import 'package:bookappp/Features/home/peresntation/views/widgets/custom_book_details_view_app_bar.dart';
import 'package:bookappp/Features/home/peresntation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                CustomBookDetailsAppBar(),
                BookDetailsSection(),
                Expanded(
                  child: SizedBox(
                    height: 5,
                  ),
                ),
                SimilarBooksSection(),
                SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
