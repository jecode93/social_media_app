import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final double hContainer = MediaQuery.of(context).size.height;
    final String loginImage = 'assets/images/login_background.jpg';
    final double sizeBoxHeight = 10.0;
    final double iconSize = 30.0;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: hContainer,
          child: Column(
            children: [
              Image(
                height: hContainer / 2.5,
                image: AssetImage(loginImage),
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              Container(
                child: Column(
                  children: [
                    Text(
                      'JEC Social',
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 34.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.0,
                      ),
                    ),
                    SizedBox(
                      height: sizeBoxHeight,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10.0),
                      child: TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'Username',
                          prefixIcon: Icon(
                            Icons.account_box,
                            size: iconSize,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: sizeBoxHeight,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10.0),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'Password',
                          prefixIcon: Icon(
                            Icons.lock,
                            size: iconSize,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        print('Button Tap');
                      },
                      child: Text('Login'),
                      style: ElevatedButton.styleFrom(
                        textStyle: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.w600,
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 80.0),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Container(
                    height: 60.0,
                    child: Center(
                      child: Text(
                        'Don\'t have an account? Sign up..',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
