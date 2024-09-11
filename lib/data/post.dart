class Post {
  final String userId;
  final String imagePath;
  final String text;
  final int likeCount;
  final int commentCount;

  const Post(this.userId, this.imagePath, this.text, this.likeCount,
      this.commentCount);
}
