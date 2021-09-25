import 'package:flutter/material.dart';
import 'package:social_media_app/data/data.dart';
import 'package:social_media_app/widgets/following_users.dart';
import 'package:social_media_app/widgets/posts_carousel.dart';

class Home extends StatefulWidget {
  Home({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late PageController _pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(initialPage: 0, viewportFraction: 0.8);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Theme.of(context).primaryColor,
          ),
          bottom: TabBar(
            indicatorWeight: 3.0,
            labelColor: Theme.of(context).primaryColor,
            labelStyle: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18.0,
            ),
            tabs: [
              Tab(text: 'Trending'),
              Tab(text: 'Latest'),
            ],
          ),
          title: Text(
            widget.title,
            style: TextStyle(
              color: Theme.of(context).primaryColor,
            ),
          ),
          backgroundColor: Colors.white,
        ),
        body: ListView(
          children: [
            FollowingUsers(),
            PostsCarousel(
              pageController: _pageController,
              title: 'Posts',
              posts: posts,
            ),
          ],
        ),
      ),
    );
  }
}
