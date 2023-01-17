import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:single_collection_bloc/bloc/single_collection_bloc.dart';

class SelectImagePage extends StatelessWidget {
  const SelectImagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        const Text("Select Image add"),
        TextField(
          onChanged: (value) {
            BlocProvider.of<SingleCollectionBloc>(context).add(
              UpdateImageUrl(imageUrl: value),
            );
          },
        ),
      ]),
    );
  }
}
