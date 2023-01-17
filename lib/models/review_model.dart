class ReviewModel {
  final String reviewId;

  final int starCount;

  final String doctorId;

  final String createdAt;

  final String comment;

  final String userId;

  final String userImage;

  final String userName;

  ReviewModel({
    required this.comment,
    required this.createdAt,
    required this.doctorId,
    required this.reviewId,
    required this.starCount,
    required this.userId,
    required this.userImage,
    required this.userName,
  });

  ReviewModel copyWith({
    String? reviewId,
    int? starCount,
    String? doctorId,
    String? createdAt,
    String? comment,
    String? userId,
    String? userImage,
    String? userName,
  }) =>
      ReviewModel(
        comment: comment ?? this.comment,
        createdAt: createdAt ?? this.createdAt,
        doctorId: doctorId ?? this.doctorId,
        reviewId: reviewId ?? this.reviewId,
        starCount: starCount ?? this.starCount,
        userId: userId ?? this.userId,
        userImage: userImage ?? this.userImage,
        userName: userName ?? this.userName,
      );

  factory ReviewModel.fromJson(Map<String, dynamic> json) => ReviewModel(
        comment: json['comment'] as String? ?? '',
        createdAt: json['created_at'] as String? ?? '',
        doctorId: json['doctor_id'] as String? ?? '',
        reviewId: json['review_id'] as String? ?? '',
        starCount: json['star_count'] as int? ?? 0,
        userId: json['user_id'] as String? ?? '',
        userImage: json['user_image'] as String? ?? '',
        userName: json['user_name'] as String? ?? '',
      );

  @override
  String toString() {
    return '''
   comment:$comment,
   createdAt:$createdAt,
   doctorId:$doctorId,
   reviewId:$reviewId,
   starCount:$starCount,
   userId:$userId,
   userImage:$userImage,
   userName:$userName,
   
    ''';
  }
}
