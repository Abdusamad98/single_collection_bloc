import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:single_collection_bloc/bloc/single_collection_bloc.dart';

class StarCountPage extends StatelessWidget {
  const StarCountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child:Column(
          children: [
          const Text("Star count "), TextField(
        keyboardType: TextInputType.number,
        onChanged: (value) {
          BlocProvider.of<SingleCollectionBloc>(context).add(
            UpdateStarCount(starCount: int.parse(value)),
          );
        },
      ),]),
    );
  }
}
