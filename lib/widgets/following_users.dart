import 'package:flutter/material.dart';
import 'package:social_media_app/data/data.dart';
import 'package:social_media_app/models/user_model.dart';

class FollowingUsers extends StatelessWidget {
  const FollowingUsers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double profileHw = 60.0;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
          child: Text(
            'Following',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          height: 80.0,
          child: ListView.builder(
              padding: EdgeInsets.only(
                left: 10.0,
              ),
              scrollDirection: Axis.horizontal,
              itemCount: users.length,
              itemBuilder: (context, index) {
                User user = users[index];
                return GestureDetector(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.all(10.0),
                    height: profileHw,
                    width: profileHw,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0, 2),
                          blurRadius: 6.0,
                        )
                      ],
                      shape: BoxShape.circle,
                      border: Border.all(
                          width: 2.0, color: Theme.of(context).primaryColor),
                    ),
                    child: ClipOval(
                      child: Image(
                        height: profileHw,
                        width: profileHw,
                        fit: BoxFit.cover,
                        image: AssetImage(user.profileImageUrl.toString()),
                      ),
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }
}
