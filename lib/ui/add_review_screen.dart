import 'package:flutter/material.dart';
import 'package:single_collection_bloc/ui/pages/add_comment_page.dart';
import 'package:single_collection_bloc/ui/pages/review_info_page.dart';
import 'package:single_collection_bloc/ui/pages/select_image_page.dart';
import 'package:single_collection_bloc/ui/pages/star_count_page.dart';

class AddReviewScreen extends StatefulWidget {
  const AddReviewScreen({Key? key}) : super(key: key);

  @override
  State<AddReviewScreen> createState() => _AddReviewScreenState();
}

class _AddReviewScreenState extends State<AddReviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Singl ecollection bloc "),),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              children: [
                AddCommentPage(),
                StarCountPage(),
                SelectImagePage(),
                ReviewInfoPage(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
