import 'package:flutter/material.dart';
import 'package:social_media_app/models/user_model.dart';
import 'package:social_media_app/widgets/custom_drawer.dart';
import 'package:social_media_app/widgets/profile_clipper.dart';

class ProfileScreen extends StatefulWidget {
  final User? user;
  const ProfileScreen({Key? key, this.user}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: CustomDrawer(),
      body: SingleChildScrollView(
        child: Column(children: [
          Stack(alignment: Alignment.center, children: [
            ClipPath(
              clipper: ProfileClipper(),
              child: Image(
                fit: BoxFit.cover,
                height: 300.0,
                width: double.infinity,
                image: AssetImage(widget.user!.backgroundImageUrl.toString()),
              ),
            ),
            Positioned(
              top: 50.0,
              left: 20.0,
              child: IconButton(
                onPressed: _scaffoldKey.currentState!.openDrawer(),
                icon: Icon(Icons.menu),
                color: Theme.of(context).primaryColor,
              ),
            ),
            Positioned(
              bottom: 10.0,
              child: Container(
                decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
                  BoxShadow(
                      color: Colors.black45,
                      offset: Offset(0, 2),
                      blurRadius: 6.0),
                ]),
                child: ClipOval(
                  child: Image(
                    fit: BoxFit.cover,
                    height: 120.0,
                    width: 120.0,
                    image: AssetImage(
                      widget.user!.profileImageUrl.toString(),
                    ),
                  ),
                ),
              ),
            ),
          ])
        ]),
      ),
    );
  }
}
