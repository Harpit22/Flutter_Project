import 'package:flutter/material.dart';

class Screen_59 extends StatefulWidget {
  @override
  State<Screen_59> createState() => _Screen_59State();
}

class _Screen_59State extends State<Screen_59> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              child: Image.asset(
                'assets/images/LoginPage.png',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: 320, left: 20),
                child: Text(
                  'Login',
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.blue,
                      fontWeight: FontWeight.w500),
                )),
            Padding(
              padding: EdgeInsets.only(top: 400, left: 20, right: 20),
              child: Container(
                height: 50,
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    // label: Text('User Id'),
                    hintText: 'User Id',
                    labelText: 'UserId',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 470, left: 20, right: 20),
              child: Container(
                height: 50,
                width: 300,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    // label: Text('Enter Password'),
                    labelText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 515, left: 180),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 550, left: 30),
              child: ElevatedButton(
                onPressed: () {
                },
                child: Text('Login'),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 650, left: 250),
              child: RichText(
                text: TextSpan(text: 'New Here ? ', children: [
                  TextSpan(text: 'Register',style: TextStyle(fontSize: 16)),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
