import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:social_media_app/data/data.dart';
import 'package:social_media_app/screens/home.dart';
import 'package:social_media_app/screens/login.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  _buildDrawerOption(Icon icon, String title, tapped) {
    return ListTile(
      leading: icon,
      title: Text(
        title,
        style: TextStyle(
          fontSize: 20.0,
        ),
      ),
      onTap: tapped,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Stack(
            children: [
              Image(
                image: AssetImage(
                  currentUser.backgroundImageUrl.toString(),
                ),
                fit: BoxFit.cover,
                height: 200.0,
                width: double.infinity,
              ),
              Positioned(
                left: 20.0,
                bottom: 20.0,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 3.0,
                          color: Theme.of(context).primaryColor,
                        ),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      height: 100.0,
                      width: 100.0,
                      child: ClipOval(
                        child: Image(
                          fit: BoxFit.cover,
                          height: 60.0,
                          width: 60.0,
                          image: AssetImage(
                            currentUser.profileImageUrl.toString(),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 6.0,
                    ),
                    Text(
                      currentUser.name.toString(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          _buildDrawerOption(
            Icon(Icons.dashboard),
            'Home',
            () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (_) => Home(),
              ),
            ),
          ),
          _buildDrawerOption(
            Icon(Icons.chat),
            'Chat',
            () {},
          ),
          _buildDrawerOption(
            Icon(Icons.location_on),
            'Map',
            () {},
          ),
          _buildDrawerOption(
            Icon(Icons.account_circle),
            'Your Profile',
            () {},
          ),
          _buildDrawerOption(
            Icon(Icons.settings),
            'Settings',
            () {},
          ),
          Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: _buildDrawerOption(
                Icon(Icons.directions_run),
                'Logout',
                () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (_) => LoginScreen(),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
