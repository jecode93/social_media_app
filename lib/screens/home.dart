import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
        drawer: Drawer(),
        body: TabBarView(
          children: [
            Center(
              child: Text('Screen 1'),
            ),
            Center(
              child: Text('Screen 2'),
            ),
          ],
        ),
      ),
    );
  }
}
