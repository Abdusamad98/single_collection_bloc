import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:single_collection_bloc/models/review_model.dart';

part 'single_collection_event.dart';

part 'single_collection_state.dart';

class SingleCollectionBloc
    extends Bloc<SingleCollectionEvent, SingleCollectionState> {
  SingleCollectionBloc()
      : super(
          SingleCollectionState(
            reviewModel: ReviewModel(
              comment: "comment",
              createdAt: "",
              doctorId: "",
              reviewId: "",
              starCount: 0,
              userId: "",
              userImage: '',
              userName: "",
            ),
            reviewAddStatus: ReviewAddStatus.pure,
          ),
        ) {
    on<UpdateComment>(_updateComment);
    on<UpdateStarCount>(_updateStarCount);
    on<AddReview>(_addReview);
    on<UpdateImageUrl>(
        (UpdateImageUrl event, Emitter<SingleCollectionState> emit) {
      ReviewModel reviewModel =
          state.reviewModel.copyWith(userImage: event.imageUrl);
      emit(state.copyWith(reviewModel: reviewModel));
    });
  }

  _updateComment(UpdateComment event, Emitter<SingleCollectionState> emit) {
    ReviewModel reviewModel =
        state.reviewModel.copyWith(comment: event.comment);
    emit(state.copyWith(reviewModel: reviewModel));
  }

  _updateStarCount(UpdateStarCount event, Emitter<SingleCollectionState> emit) {
    ReviewModel reviewModel =
        state.reviewModel.copyWith(starCount: event.starCount);
    emit(state.copyWith(reviewModel: reviewModel));
  }

  _addReview(AddReview event, Emitter<SingleCollectionState> emit) {
    emit(state.copyWith(reviewAddStatus: ReviewAddStatus.loading));
    //  var isAdded = await revieRepo.add(state.reviewModel);
    // if (isAdded) {
    //   emit(state.copyWith(reviewAddStatus: ReviewAddStatus.success));
    // } else {
    //   emit(state.copyWith(reviewAddStatus: ReviewAddStatus.error));
    // }
  }
}
