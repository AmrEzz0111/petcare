import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pet_care/authentication/sign_in_screen.dart';

class AuthenticationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFF2e2b43),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 80),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Row(
                      children: [
                        Text(
                          "Welcome  ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 45,
                          ),
                        ),
                        FaIcon(
                          FontAwesomeIcons.cat,
                          size: 35,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Row(
                      children: [
                        Text(
                          "to",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 45,
                          ),
                        ),
                        Text(
                          " Pet.Care",
                          style: TextStyle(
                            color: Color(0xFFc25e3c),
                            fontSize: 45,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: RaisedButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.facebookSquare,
                        color: Color(0xFF4267B2),
                      ),
                      Text('  Continue with ',
                          style: TextStyle(
                              fontSize: 17, color: Color(0xDD4267B2))),
                      Text(' Facebook',
                          style: TextStyle(
                            color: Color(0xFF4267B2),
                            fontSize: 17,
                          ))
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: RaisedButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.google,
                        color: Color(0xFFc25e3c),
                      ),
                      Text('  Continue with ',
                          style: TextStyle(
                              fontSize: 17, color: Color(0xDDc25e3c))),
                      Text(' Google',
                          style: TextStyle(
                            color: Color(0xFFc25e3c),
                            fontSize: 17,
                          ))
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: RaisedButton(
                onPressed: () {},
                color: Color(0x00FFFFFF),
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Colors.white),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => Registeraion()));
                        },
                        child: Text('Register With Email ',
                            style:
                                TextStyle(fontSize: 17, color: Colors.white)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already have an account? ',
                    style: TextStyle(fontSize: 15, color: Colors.white)),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignIn()));
                  },
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignIn()));
                    },
                    child: Text(
                      "Sign in",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
