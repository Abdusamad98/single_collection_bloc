import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:single_collection_bloc/bloc/single_collection_bloc.dart';

class ReviewInfoPage extends StatelessWidget {
  const ReviewInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SingleCollectionBloc, SingleCollectionState>(
        builder: (context, state) {
      return Column(
        children: [Text(state.reviewModel.toString())],
      );
    });
  }
}
