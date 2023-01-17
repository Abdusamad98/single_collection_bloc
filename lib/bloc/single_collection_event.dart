part of 'single_collection_bloc.dart';

abstract class SingleCollectionEvent {}

class UpdateComment extends SingleCollectionEvent {
  UpdateComment({required this.comment});

  final String comment;
}

class UpdateStarCount extends SingleCollectionEvent {
  UpdateStarCount({required this.starCount});

  final int starCount;
}

class UpdateImageUrl extends SingleCollectionEvent {
  UpdateImageUrl({required this.imageUrl});

  final String imageUrl;
}


class AddReview extends SingleCollectionEvent {
}
