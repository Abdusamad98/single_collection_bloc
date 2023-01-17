part of 'single_collection_bloc.dart';

class SingleCollectionState extends Equatable {
  final ReviewModel reviewModel;
  final ReviewAddStatus reviewAddStatus;

  const SingleCollectionState(
      {required this.reviewModel, required this.reviewAddStatus});

  SingleCollectionState copyWith(
          {ReviewModel? reviewModel, ReviewAddStatus? reviewAddStatus}) =>
      SingleCollectionState(
        reviewModel: reviewModel ?? this.reviewModel,
        reviewAddStatus: reviewAddStatus ?? this.reviewAddStatus,
      );

  @override
  List<Object?> get props => [
        reviewModel,
        reviewAddStatus,
      ];
}

enum ReviewAddStatus {
  loading,
  success,
  error,
  pure,
}
