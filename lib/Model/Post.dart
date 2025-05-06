class Post {
  final String useravatar;
  final String username;
  final String userCaption;
  final String timeAgo;
  final String posttext;
  final String postimage;
  final String totalComments;
  final String totalLikes;

  Post({
    required this.useravatar,
    required this.username,
    required this.userCaption,
    required this.timeAgo,
    required this.postimage,
    required this.posttext,
    required this.totalComments,
    required this.totalLikes,
  });
}