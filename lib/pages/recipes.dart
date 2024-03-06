import 'dart:io';
import 'package:cook_up/models/search_filter_model.dart';
import 'package:cook_up/utils/AppColor.dart';
import 'package:cook_up/widgets/receipe_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Recipe extends StatefulWidget {
  const Recipe({super.key});

  @override
  State<Recipe> createState() => _RecipeState();
}

class _RecipeState extends State<Recipe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primary,
        elevation: 0,
        centerTitle: true,
        title: const Text('View Recipes',
            style: TextStyle(
                color: Color(0xFFF6F1E9),
                fontFamily: 'inter',
                fontWeight: FontWeight.w400,
                fontSize: 16)),
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Container(
                //   margin: const EdgeInsets.only(bottom: 15),
                //   child: const Text(
                //     'This is the result of your search..',
                //     style: TextStyle(color: Colors.grey, fontSize: 12),
                //   ),
                // ),
                ListView.separated(
                  shrinkWrap: true,
                  // itemCount: searchResult.length,
                  itemCount: 1,
                  physics: const NeverScrollableScrollPhysics(),
                  separatorBuilder: (context, index) {
                    return const SizedBox(height: 16);
                  },
                  itemBuilder: (context, index) {
                    return const RecipeTile(
                        // data: searchResult[index],

                        );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
