import 'package:flutter/material.dart';
import 'package:insta_clone_test/constant/post_json.dart';
import '../widgets/post_item.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return getBody();
  }

  Widget getBody() {
    return SingleChildScrollView(
      child: Column(
        children: List.generate(posts.length, (index) {
          return PostItem(
            postImg: posts[index]['postImg'],
            profileImg: posts[index]['profileImg'],
            name: posts[index]['name'],
            caption: posts[index]['caption'],
            isLoved: posts[index]['isLoved'],
            viewCount: posts[index]['commentCount'],
            likedBy: posts[index]['likedBy'],
            dayAgo: posts[index]['timeAgo'],
          );
        }),
      ),
    );
  }
}
