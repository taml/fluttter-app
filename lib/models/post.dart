class Post {
  int likes;
  int comments;
  int views;

  Post(this.title, this.author, this.authorImg, this.date, this.postImg,
      [this.likes = 0, this.comments = 0, this.views = 0])
      : assert(title != null),
        assert(author != null),
        assert(authorImg != null),
        assert(date != null),
        assert(postImg != null);

  final String title;
  final String author;
  final String authorImg;
  final int date;
  final String postImg;

}
