import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pet_care/authentication/registeration.dart';
import 'package:pet_care/authentication/signIn-provider.dart';
import 'package:pet_care/authentication/sign_in_screen.dart';
import 'package:pet_care/colors/style.dart';
import 'package:pet_care/screens/home_screen.dart';
import 'package:provider/provider.dart';

class AuthenticationScreen extends StatefulWidget {
  @override
  _AuthenticationScreenState createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<AuthenticationScreen> {
  @override
  Widget build(BuildContext context) {
    bool _isSigningIn = false;
    return Scaffold(
      body: ChangeNotifierProvider(
        create: (context) => SignInProvider(),
        child: Consumer<SignInProvider>(
          builder: (context, signInProv, _) => Container(
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
                              "Welcome ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 45,
                                  fontFamily: 'Co'),
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
                                  fontFamily: 'Co'),
                            ),
                            Text(
                              " Pet.Care",
                              style: TextStyle(
                                  color: AppTheme.appDark,
                                  fontSize: 45,
                                  fontFamily: 'Co'),
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
                          SizedBox(
                            width: 10,
                          ),
                          Text('Continue with ',
                              style: TextStyle(
                                  fontFamily: 'Co',
                                  fontSize: 16,
                                  color: Color(0xDD4267B2))),
                          Text(' Facebook',
                              style: TextStyle(
                                  color: Color(0xFF4267B2),
                                  fontSize: 16,
                                  fontFamily: 'Co'))
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
                  child: _isSigningIn
                      ? CircularProgressIndicator(
                          valueColor:
                              AlwaysStoppedAnimation<Color>(Colors.white),
                        )
                      : RaisedButton(
                          onPressed: () async {
                            setState(() {
                              _isSigningIn = true;
                            });

                            await signInProv.signInWithGoogle();

                            setState(() {
                              _isSigningIn = false;
                            });

                            if (signInProv.user != null) {
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                  builder: (context) => HomeScreen(
                                    user: signInProv.user,
                                  ),
                                ),
                              );
                            }
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.google,
                                  color: AppTheme.appDark,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text('Continue with ',
                                    style: TextStyle(
                                        fontFamily: 'Co',
                                        fontSize: 16,
                                        color: AppTheme.appDark)),
                                Text(' Google',
                                    style: TextStyle(
                                      fontFamily: 'Co',
                                      color: AppTheme.appDark,
                                      fontSize: 16,
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
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Registeraion()));
                            },
                            child: Text('Register With Email ',
                                style: TextStyle(
                                    fontFamily: 'Co',
                                    fontSize: 16,
                                    color: Colors.white)),
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
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontFamily: 'Co')),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignIn()));
                      },
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignIn()));
                        },
                        child: Text(
                          "Sign in",
                          style: TextStyle(
                              fontFamily: 'Co',
                              fontWeight: FontWeight.bold,
                              color: AppTheme.appDark,
                              decoration: TextDecoration.underline),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
