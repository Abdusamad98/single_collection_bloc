import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:single_collection_bloc/bloc/single_collection_bloc.dart';

class AddCommentPage extends StatelessWidget {
  const AddCommentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
       const Text("Comment add"),
        TextField(
          onChanged: (value) {
            BlocProvider.of<SingleCollectionBloc>(context).add(
              UpdateComment(comment: value),
            );
          },
        ),
      ],
    ));
  }
}
