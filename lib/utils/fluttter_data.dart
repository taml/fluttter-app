import '../models/post.dart';

class FluttterData {

  List<Post> getPopularData() {
    Post post1 = Post('Love is Color', 'Fluffy McScruffins', 'assets/profile/dog1.png', '212 days ago', 'assets/1.jpg', 334, 8, 2057, 3);
    Post post2 = Post('Urban Bear', 'Pugsworth', 'assets/profile/dog6.png', '160 days ago', 'assets/7.jpg', 297, 5, 1893, 0, 1);
    Post post3 = Post('Pink Kingdom', 'Majestic Floof', 'assets/profile/dog3.png', '348 days ago', 'assets/2.jpg', 285, 2, 4246, 1);
    return [post1, post2, post3];
  }

}