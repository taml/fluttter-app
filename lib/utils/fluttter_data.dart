import '../models/post.dart';

class FluttterData {

  List<Post> getFollowingData() {
    Post post1 = Post('Krypton Storm', 'Bark Kent', 'assets/profile/dog2.png', '1 day ago', 'assets/8.jpg', 118, 5, 3905, 1);
    Post post2 = Post('Gotham Nightlife', 'Kate Kanine', 'assets/profile/dog7.png', '3 days ago', 'assets/5.jpg');
    Post post3 = Post('Alfred', 'Bruce Mayne', 'assets/profile/dog5.png', '5 days ago', 'assets/6.jpg', 97, 4, 2597, 1);
    return [post1, post2, post3];
  }

  List<Post> getPopularData() {
    Post post1 = Post('Love is Color', 'Fluffy McScruffins', 'assets/profile/dog1.png', '212 days ago', 'assets/1.jpg', 334, 8, 2057, 3);
    Post post2 = Post('Urban Bear', 'Pugsworth', 'assets/profile/dog6.png', '160 days ago', 'assets/7.jpg', 297, 5, 1893, 0, 1);
    Post post3 = Post('Pink Kingdom', 'Majestic Floof', 'assets/profile/dog3.png', '348 days ago', 'assets/2.jpg', 285, 2, 4246, 1);
    return [post1, post2, post3];
  }

  List<Post> getRecentData() {
    Post post1 = Post('Bear Cub', 'Pugsworth', 'assets/profile/dog6.png', '2 hours ago', 'assets/3.jpg', 0, 0, 17);
    Post post2 = Post('Red Garden', 'Tiny', 'assets/profile/dog4.png', '4 hours ago', 'assets/4.jpg');
    Post post3 = Post('Krypton Storm', 'Bark Kent', 'assets/profile/dog2.png', '1 day ago', 'assets/8.jpg', 118, 5, 3905, 1);
    return [post1, post2, post3];
  }

}